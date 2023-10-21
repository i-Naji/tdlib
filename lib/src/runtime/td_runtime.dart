import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import '../tdapi/tdapi.dart';
import '../tdclient/tdjson_bindings.dart' as tdjson;
import 'td_exceptions.dart';
import 'td_receive_worker.dart';

/// The process-wide TDLib runtime.
///
/// One background isolate calls `td_receive` for every client (TDLib forbids
/// two concurrent receivers). The runtime routes responses to the futures
/// returned by [TdClient.invoke] and updates to each client's streams, in the
/// order TDLib produced them. Requests are sent directly with `td_send`,
/// which is thread-safe.
///
/// Start it once, early, on the isolate that owns TDLib:
///
/// ```dart
/// final runtime = await TdRuntime.start();
/// final client = runtime.createClient();
/// client.on<UpdateAuthorizationState>().listen(...);
/// final me = await client.invoke(const GetMe());
/// ```
final class TdRuntime {
  TdRuntime._(this.defaultTimeout, this._libraryPath);

  static TdRuntime? _instance;
  static Future<TdRuntime>? _starting;

  /// The running runtime, if [start] has completed.
  static TdRuntime? get instance => _instance;

  /// Default timeout for [TdClient.invoke]. A timeout only stops waiting; the
  /// TDLib request itself keeps running.
  final Duration defaultTimeout;

  final String? _libraryPath;

  final Map<int, TdClient> _clients = {};
  final Map<int, _Pending> _pending = {};
  int _nextExtra = 1;

  ReceivePort? _events;
  SendPort? _control;
  Isolate? _worker;
  int _generation = 0;
  bool _receiving = false;
  bool _closed = false;
  Set<String>? _updateFilter;
  List<String> _coalesce = const [
    'updateFile',
    'updateUserStatus',
    'updateConnectionState',
  ];

  final StreamController<Object> _errors = StreamController.broadcast();

  /// Errors that aren't tied to one request: the receive isolate failing
  /// ([TdReceiverException]) or events that couldn't be decoded.
  Stream<Object> get errors => _errors.stream;

  /// Clients created by this runtime that are not closed yet.
  Iterable<TdClient> get clients => _clients.values;

  /// Identifiers of the live clients. Persist these, and pass them as
  /// `staleClientIds` on the next start, to close clients that survived a
  /// Dart restart in the same process (hot restart, a re-created engine).
  List<int> get liveClientIds => _clients.keys.toList();

  /// Whether the receive isolate is running.
  bool get isReceiving => _receiving;

  /// Starts the runtime, or returns the one already running.
  ///
  /// * [libraryPath]: where libtdjson is; by default `libtdjson.so` on
  ///   Android and Linux, `tdjson.dll` on Windows and the app itself on iOS
  ///   and macOS (link the library into the app there).
  /// * [logVerbosityLevel]: TDLib's internal log level (0 = fatal only,
  ///   1 = errors). Higher levels cost CPU and disk.
  /// * [checkVersion]: verify the bundled TDLib matches this package's
  ///   generated API ([tdlibVersion] / [tdlibCompatibleCommits]). Turn off
  ///   only for a custom build whose schema you know matches.
  /// * [staleClientIds]: client identifiers from an earlier run of this
  ///   process to close before starting (see [liveClientIds]).
  static Future<TdRuntime> start({
    String? libraryPath,
    int logVerbosityLevel = 1,
    bool checkVersion = true,
    Duration defaultTimeout = const Duration(seconds: 30),
    Iterable<int> staleClientIds = const [],
  }) {
    final running = _instance;
    if (running != null && !running._closed) return Future.value(running);
    return _starting ??= _start(
      libraryPath: libraryPath,
      logVerbosityLevel: logVerbosityLevel,
      checkVersion: checkVersion,
      defaultTimeout: defaultTimeout,
      staleClientIds: staleClientIds,
    ).whenComplete(() => _starting = null);
  }

  static Future<TdRuntime> _start({
    required String? libraryPath,
    required int logVerbosityLevel,
    required bool checkVersion,
    required Duration defaultTimeout,
    required Iterable<int> staleClientIds,
  }) async {
    tdjson.loadTdJson(libraryPath);
    execute(SetLogVerbosityLevel(newVerbosityLevel: logVerbosityLevel));
    if (checkVersion) verifyNativeVersion();

    final runtime = TdRuntime._(defaultTimeout, libraryPath);
    await runtime._spawnWorker();
    for (final id in staleClientIds) {
      // Responses to these go nowhere; TDLib closes the client either way.
      tdjson.tdSendJson(id, jsonEncode(const Close().toJson()));
    }
    _instance = runtime;
    return runtime;
  }

  /// Executes a request synchronously through `td_execute`, without a
  /// client. Only requests with [TdFunction.canBeCalledSynchronously] work.
  /// Loads libtdjson from its default place if [start] hasn't run yet.
  static R execute<R extends TdObject>(TdFunction<R> request) {
    tdjson.loadTdJson();
    final raw = tdjson.tdExecuteJson(jsonEncode(request.toJson()));
    if (raw == null) {
      throw TdException(
        const TdError(code: 0, message: 'td_execute returned nothing'),
        request,
      );
    }
    final object = convertMapToObject(jsonDecode(raw) as Map<String, dynamic>);
    if (object is TdError) throw TdException(object, request);
    if (object is R) return object;
    throw TdUnexpectedResponseException(object, request);
  }

  /// Throws [TdVersionMismatchException] if the native TDLib isn't the one
  /// this package's API was generated for.
  static void verifyNativeVersion() {
    String option(String name) {
      final value = execute(GetOption(name: name));
      return value is OptionValueString ? value.value : '';
    }

    final version = option('version');
    final commit = option('commit_hash');
    if (version != tdlibVersion ||
        (commit.isNotEmpty && !tdlibCompatibleCommits.contains(commit))) {
      throw TdVersionMismatchException(
        nativeVersion: version,
        nativeCommit: commit,
      );
    }
  }

  /// Creates a TDLib client and sends it a first request, which makes TDLib
  /// start it: `updateAuthorizationState` with
  /// `authorizationStateWaitTdlibParameters` follows. Subscribe to
  /// [TdClient.authorizationStates] right after this call.
  TdClient createClient() {
    _checkOpen();
    final client = TdClient._(this, tdjson.tdCreateClientId());
    _clients[client.id] = client;
    client.invoke(const GetOption(name: 'version')).ignore();
    return client;
  }

  /// Limits which updates are decoded at all. Updates of other types are
  /// dropped in the receive isolate without decoding, which saves CPU when
  /// an app needs only a few kinds. `null` (the default) delivers all.
  ///
  /// Authorization, option and connection-state updates always pass. An
  /// update dropped here is gone: read current state from TDLib (e.g.
  /// `getChat`) before relying on updates of a newly added type.
  void setUpdateFilter(Set<String>? updateTypes) {
    _updateFilter = updateTypes;
    _control?.send({'cmd': 'filter', 'wanted': updateTypes?.toList()});
  }

  /// Update types whose older copies may be dropped when a newer copy
  /// arrives in the same small batch. Only for updates that carry the full
  /// current value. Defaults to file, user-status and connection updates.
  void setCoalescedUpdates(List<String> updateTypes) {
    _coalesce = List.unmodifiable(updateTypes);
    _control?.send({'cmd': 'coalesce', 'types': _coalesce});
  }

  /// Restarts the receive isolate if it stopped (e.g. after the OS froze a
  /// backgrounded Android app). Safe to call any time; call it on resume.
  Future<void> ensureReceiving() async {
    if (_closed || _receiving) return;
    await _spawnWorker();
  }

  /// Closes every client, waits for each to report it is closed (up to
  /// [timeout]), then stops the receive isolate. Call before the process
  /// exits when you can (e.g. on desktop quit).
  Future<void> close({Duration timeout = const Duration(seconds: 15)}) async {
    if (_closed) return;
    await Future.wait([
      for (final client in _clients.values.toList())
        client.close(timeout: timeout),
    ]);
    _closed = true;
    _failPending(const TdClientClosedException(0));
    await _stopWorker();
    await _errors.close();
    if (identical(_instance, this)) _instance = null;
  }

  // ---------------------------------------------------------------------
  // Worker management
  // ---------------------------------------------------------------------

  Future<void> _spawnWorker() async {
    final generation = ++_generation;
    final events = ReceivePort('TDLib events');
    final exits = ReceivePort('TDLib receive exit');
    final control = Completer<SendPort>();
    _events?.close();
    _events = events;
    exits.listen((_) {
      exits.close();
      // An exit we didn't ask for: fail what's waiting so callers don't hang.
      if (generation == _generation && _receiving) {
        _receiving = false;
        const error = TdReceiverException('receive isolate exited');
        _failPending(error);
        if (!_errors.isClosed) _errors.add(error);
      }
    });
    events.listen((message) {
      if (generation != _generation) return; // a replaced worker
      if (message is SendPort) {
        if (!control.isCompleted) control.complete(message);
      } else if (message is List) {
        for (final event in message) {
          _routeOne(event);
        }
      } else {
        _routeOne(message);
      }
    });
    _worker = await Isolate.spawn(
      tdReceiveWorkerMain,
      TdReceiveWorkerConfig(
        events: events.sendPort,
        libraryPath: _libraryPath,
      ),
      debugName: 'TDLib receive',
      errorsAreFatal: true,
      onExit: exits.sendPort,
    );
    _control = await control.future;
    _receiving = true;
    _control!.send({'cmd': 'coalesce', 'types': _coalesce});
    if (_updateFilter != null) {
      _control!.send({'cmd': 'filter', 'wanted': _updateFilter!.toList()});
    }
  }

  Future<void> _stopWorker() async {
    final worker = _worker;
    _worker = null;
    _receiving = false;
    _generation++; // the exit below is expected
    if (worker == null) return;
    final exited = ReceivePort();
    worker.addOnExitListener(exited.sendPort);
    _control?.send({'cmd': 'stop'});
    // The worker stops after its current td_receive returns (about 1 s).
    await exited.first.timeout(
      const Duration(seconds: 3),
      onTimeout: () => worker.kill(priority: Isolate.immediate),
    );
    exited.close();
    _events?.close();
    _events = null;
    _control = null;
  }

  // ---------------------------------------------------------------------
  // Routing (runs in receive order)
  // ---------------------------------------------------------------------

  void _routeOne(Object? event) {
    if (event is! Map<String, dynamic>) {
      if (event != null) _errors.add(TdDecodeException('$event'));
      return;
    }
    if (event['@type'] == '_tdReceiveFatal') {
      _receiving = false;
      _generation++; // its exit is expected now
      final error = TdReceiverException('${event['error']}');
      _failPending(error);
      _errors.add(error);
      return;
    }

    final object = convertMapToObject(event);
    final extra = event['@extra'];
    if (extra is int) {
      final pending = _pending.remove(extra);
      if (pending != null) {
        pending.complete(object);
        return;
      }
    }
    final clientId = event['@client_id'];
    if (clientId is int) _clients[clientId]?._handle(object);
  }

  void _failPending(Object error) {
    final pending = _pending.values.toList();
    _pending.clear();
    for (final p in pending) {
      p.fail(error);
    }
  }

  void _checkOpen() {
    if (_closed) throw StateError('TdRuntime is closed');
  }
}

/// One TDLib client (one account / database directory).
final class TdClient {
  TdClient._(this.runtime, this.id);

  /// The runtime this client belongs to.
  final TdRuntime runtime;

  /// TDLib client identifier.
  final int id;

  final StreamController<TdObject> _updates =
      StreamController.broadcast(sync: true);
  final Completer<void> _closed = Completer();
  AuthorizationState? _authorizationState;

  /// Every update for this client, in TDLib's order. (Responses to
  /// [invoke] and [send] go to their requests, not here.)
  ///
  /// Listeners run synchronously while the runtime routes events, so keep
  /// them quick; hand slow work to an explicitly serialized queue.
  Stream<TdObject> get updates => _updates.stream;

  /// Updates of type [T] only, e.g. `client.on<UpdateNewMessage>()`.
  Stream<T> on<T extends TdObject>() =>
      _updates.stream.where((u) => u is T).cast<T>();

  /// The last authorization state TDLib reported, if any.
  AuthorizationState? get authorizationState => _authorizationState;

  /// The current authorization state (if TDLib reported one yet), then every
  /// change. Safe to subscribe late, e.g. from a widget's `initState`.
  Stream<AuthorizationState> get authorizationStates {
    StreamSubscription<UpdateAuthorizationState>? subscription;
    late final StreamController<AuthorizationState> controller;
    controller = StreamController<AuthorizationState>(
      onListen: () {
        // Synchronous: no update can arrive between these two steps.
        final current = _authorizationState;
        if (current != null) controller.add(current);
        subscription = on<UpdateAuthorizationState>().listen(
          (u) => controller.add(u.authorizationState),
          onError: controller.addError,
          onDone: controller.close,
        );
      },
      onCancel: () => subscription?.cancel(),
    );
    return controller.stream;
  }

  /// Whether TDLib reported `authorizationStateClosed` for this client.
  bool get isClosed => _closed.isCompleted;

  /// Completes when this client is closed.
  Future<void> get done => _closed.future;

  /// Sends [request] and completes with TDLib's typed response.
  ///
  /// Throws [TdException] for a TDLib error, [TimeoutException] after
  /// [timeout] (default [TdRuntime.defaultTimeout]; the TDLib request itself
  /// is not cancelled), or [TdClientClosedException] if the client closes.
  Future<R> invoke<R extends TdObject>(
    TdFunction<R> request, {
    Duration? timeout,
  }) {
    if (isClosed) return Future.error(TdClientClosedException(id));
    if (!runtime._receiving) {
      return Future.error(
          const TdReceiverException('receive isolate is not running'));
    }
    final extra = runtime._nextExtra++;
    final pending = _Pending(id);
    runtime._pending[extra] = pending;
    final limit = timeout ?? runtime.defaultTimeout;
    pending.timer = Timer(limit, () {
      if (runtime._pending.remove(extra) != null) {
        pending.fail(TimeoutException(
            'TDLib ${request.getConstructor()} timed out', limit));
      }
    });
    try {
      tdjson.tdSendJson(id, jsonEncode(request.toJson(extra)));
    } catch (error) {
      runtime._pending.remove(extra);
      pending.timer?.cancel();
      return Future.error(error);
    }
    return pending.completer.future.then<R>((object) {
      if (object is TdError) throw TdException(object, request);
      if (object is R) return object;
      throw TdUnexpectedResponseException(object, request);
    });
  }

  /// Sends [request] without waiting for its response (which is dropped).
  void send(TdFunction request) {
    if (isClosed) throw TdClientClosedException(id);
    invoke(request).ignore();
  }

  /// Sets TDLib's `online` option. Set it true while the app is visible and
  /// false in the background; TDLib does less work for offline clients.
  Future<void> setOnline(bool online) => invoke(SetOption(
        name: 'online',
        value: OptionValueBoolean(value: online),
      ));

  /// Tells TDLib the current network type, prompting it to reconnect.
  Future<void> setNetworkType(NetworkType type) =>
      invoke(SetNetworkType(type: type));

  /// Asks TDLib to close this client and waits up to [timeout] for
  /// `authorizationStateClosed`. The client can't be used afterwards; its
  /// database stays on disk.
  Future<void> close({Duration timeout = const Duration(seconds: 15)}) async {
    if (isClosed) return;
    try {
      send(const Close());
    } on TdClientClosedException {
      return;
    }
    await _closed.future.timeout(timeout, onTimeout: () {});
  }

  void _handle(TdObject object) {
    if (object is UpdateAuthorizationState) {
      _authorizationState = object.authorizationState;
    }
    _updates.add(object);
    if (object is UpdateAuthorizationState &&
        object.authorizationState is AuthorizationStateClosed) {
      _markClosed();
    }
  }

  void _markClosed() {
    if (_closed.isCompleted) return;
    _closed.complete();
    runtime._clients.remove(id);
    final mine = runtime._pending.entries
        .where((e) => e.value.clientId == id)
        .map((e) => e.key)
        .toList();
    for (final key in mine) {
      runtime._pending.remove(key)?.fail(TdClientClosedException(id));
    }
    _updates.close();
  }
}

final class _Pending {
  _Pending(this.clientId);

  final int clientId;
  final Completer<TdObject> completer = Completer();
  Timer? timer;

  void complete(TdObject object) {
    timer?.cancel();
    if (!completer.isCompleted) completer.complete(object);
  }

  void fail(Object error) {
    timer?.cancel();
    if (!completer.isCompleted) completer.completeError(error);
  }
}
