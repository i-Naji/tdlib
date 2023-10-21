// The receive worker: the only caller of td_receive in the process.
//
// It reads each event's "@type" from TDLib's raw bytes, drops updates the app
// filtered out without decoding them, decodes the rest straight from TDLib's
// buffer, merges repeated full-state updates inside a batch, and sends small
// batches of plain maps to the runtime.

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../tdclient/tdjson_bindings.dart' show loadTdJson, tdReceiveRaw;

/// Start-up settings for [tdReceiveWorkerMain].
final class TdReceiveWorkerConfig {
  /// Creates worker settings.
  const TdReceiveWorkerConfig({
    required this.events,
    this.libraryPath,
    this.idleTimeoutSeconds = 1.0,
    this.batchLimit = 16,
    this.batchWindowMicros = 2000,
  });

  /// Where the worker posts messages. The first message is the worker's
  /// control [SendPort]; then `List` batches of events (`Map` objects, or a
  /// `String` for an event that wasn't valid JSON), and finally a
  /// `{'@type': '_tdReceiveFatal'}` map if td_receive throws.
  final SendPort events;

  /// Path of libtdjson, or null for the platform default (see [loadTdJson]).
  final String? libraryPath;

  /// How long td_receive may block while nothing is buffered. Also the
  /// longest a stop request waits.
  final double idleTimeoutSeconds;

  /// Most events per batch.
  final int batchLimit;

  /// Longest time, in microseconds, an event waits in a partial batch.
  final int batchWindowMicros;
}

// Control messages (runtime -> worker), plain maps:
//   {'cmd': 'filter',   'wanted': List<String>?}  null = deliver every update
//   {'cmd': 'coalesce', 'types':  List<String>}
//   {'cmd': 'stop'}

/// Updates the runtime itself relies on; never filtered out.
const Set<String> _alwaysKeep = {
  'updateAuthorizationState',
  'updateOption',
  'updateConnectionState',
};

final class _WorkerState {
  Set<String>? wanted; // null = no filtering
  Set<String> coalesce = const {};
  bool stopped = false;

  void apply(Object? message) {
    if (message is! Map) return;
    switch (message['cmd']) {
      case 'filter':
        final list = message['wanted'];
        wanted = list is List ? {...list.cast<String>(), ..._alwaysKeep} : null;
      case 'coalesce':
        final list = message['types'];
        coalesce = list is List ? list.cast<String>().toSet() : const {};
      case 'stop':
        stopped = true;
    }
  }

  /// Responses, errors and anything that isn't an update always pass.
  bool accepts(String type) {
    final w = wanted;
    if (w == null || !type.startsWith('update')) return true;
    return w.contains(type);
  }
}

final Converter<List<int>, Object?> _utf8Json =
    const Utf8Decoder().fuse(const JsonDecoder());

// `{"@type":"` as bytes. TDLib writes "@type" first; an event that doesn't
// start this way is simply decoded in full (no filtering).
const List<int> _typePrefix = [
  0x7B, 0x22, 0x40, 0x74, 0x79, 0x70, 0x65, 0x22, 0x3A, 0x22, //
];

/// Reads the "@type" value from the start of a TDLib JSON event, or null.
String? peekType(Uint8List bytes) {
  const start = 10; // _typePrefix.length
  if (bytes.length <= start) return null;
  for (var i = 0; i < start; i++) {
    if (bytes[i] != _typePrefix[i]) return null;
  }
  for (var end = start; end < bytes.length && end < start + 96; end++) {
    if (bytes[end] == 0x22) return String.fromCharCodes(bytes, start, end);
  }
  return null;
}

/// Key for updates that carry the full current value, so only the newest one
/// per key in a batch needs to reach the runtime. Null = never merge.
Object? coalesceKey(String type, Map<String, dynamic> event) {
  final clientId = event['@client_id'];
  switch (type) {
    case 'updateFile':
      final file = event['file'];
      return file is Map ? (clientId, 0, file['id']) : null;
    case 'updateUserStatus':
      return (clientId, 1, event['user_id']);
    case 'updateConnectionState':
      return (clientId, 2, null);
    default:
      return null;
  }
}

/// Isolate entry point: `Isolate.spawn(tdReceiveWorkerMain, config)`.
Future<void> tdReceiveWorkerMain(TdReceiveWorkerConfig config) async {
  loadTdJson(config.libraryPath);
  final state = _WorkerState();
  final control = ReceivePort('TDLib receive control');
  control.listen(state.apply);
  config.events.send(control.sendPort);

  // Lets queued control messages run between blocking td_receive calls.
  Future<void> yieldToEventLoop() => Future<void>.delayed(Duration.zero);

  var batch = <Object?>[];
  final latestIndex = <Object, int>{};
  final buffered = Stopwatch();
  var sinceYield = 0;

  void flush() {
    if (batch.isEmpty) return;
    batch.removeWhere((e) => e == null); // drop merged-away entries
    if (batch.isNotEmpty) config.events.send(batch);
    batch = <Object?>[];
    latestIndex.clear();
    buffered
      ..stop()
      ..reset();
  }

  while (!state.stopped) {
    final Pointer<Utf8> pointer;
    try {
      // Block only when nothing is buffered, so a partial batch isn't delayed.
      pointer = tdReceiveRaw(batch.isEmpty ? config.idleTimeoutSeconds : 0.0);
    } catch (e) {
      flush();
      config.events.send({'@type': '_tdReceiveFatal', 'error': '$e'});
      break;
    }

    if (pointer == nullptr) {
      flush();
      await yieldToEventLoop();
      sinceYield = 0;
      continue;
    }

    // A view of TDLib's buffer, valid until the next td_receive call.
    final bytes = pointer.cast<Uint8>().asTypedList(pointer.length);
    final type = peekType(bytes);

    if (type != null && !state.accepts(type)) {
      // Dropped without decoding. Still yield now and then, so a flood of
      // dropped updates can't starve control messages.
      if (++sinceYield >= 256) {
        flush();
        await yieldToEventLoop();
        sinceYield = 0;
      }
      continue;
    }

    Object? event;
    try {
      event = _utf8Json.convert(bytes);
    } on FormatException {
      event = utf8.decode(bytes, allowMalformed: true);
    }

    if (type != null &&
        event is Map<String, dynamic> &&
        state.coalesce.contains(type)) {
      final key = coalesceKey(type, event);
      if (key != null) {
        // Tombstone the older copy and append the new one at its real
        // position, so its order relative to other events is kept.
        final previous = latestIndex[key];
        if (previous != null) batch[previous] = null;
        latestIndex[key] = batch.length;
      }
    }

    batch.add(event);
    if (!buffered.isRunning) buffered.start();
    if (batch.length >= config.batchLimit ||
        buffered.elapsedMicroseconds >= config.batchWindowMicros) {
      flush();
      await yieldToEventLoop();
      sinceYield = 0;
    }
  }

  flush();
  control.close();
}
