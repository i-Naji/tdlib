import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';

import 'td_plugin.dart';

/// TD Native Library Instance.
class TdNativePlugin extends TdPlugin {
  /// This class is set to be the default [TdPlugin] initializer.
  static void registerWith() {
    TdPlugin.initialize = initialize;
  }

  /// This class is set to be the default [TdPlugin].instance.
  static Future initialize([String? libPath]) async {
    TdPlugin.instance =
        TdNativePlugin(ffi.DynamicLibrary.open(libPath ?? 'libtdjson.so'));
  }

  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// TDLib methods are looked up in [dynamicLibrary].
  TdNativePlugin(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// TDLib methods are looked up with [lookup].
  TdNativePlugin.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  /// Creates a new instance of TDLib.
  /// return Pointer to the created instance of TDLib.
  late final _TdJsonClientCreate _tdJsonClientCreate =
      _lookup<ffi.NativeFunction<_TdJsonClientCreatePtr>>(
              'td_json_client_create')
          .asFunction();

  @override
  int tdJsonClientCreate() => _tdJsonClientCreate().address;

  /// Sends request to the TDLib client. May be called from any thread.
  /// [client] The client.
  /// [request] JSON-serialized null-terminated request to TDLib.
  late final _TdJsonClientSend _tdJsonClientSend =
      _lookup<ffi.NativeFunction<_TdJsonClientSendPtr>>('td_json_client_send')
          .asFunction();

  @override
  void tdJsonClientSend(int clientId, String event) {
    final req = event.toNativeUtf8();
    _tdJsonClientSend(
      ffi.Pointer.fromAddress(clientId),
      req,
    );
    malloc.free(req);
  }

  /// Receives incoming updates and request responses from the TDLib client. May be called from any thread, but
  /// must not be called simultaneously from two different threads.
  ///
  /// Returned pointer will be deallocated by TDLib during next call to [tdJsonClientReceive] or [tdJsonClientExecute]
  /// the same thread, so it can't be used after that.
  ///
  /// [client] The client.
  /// [timeout] The maximum number of seconds allowed for this function to wait for new data.
  ///
  /// return JSON-serialized null-terminated incoming update or request response. May be *null* if the timeout expires.
  late final _TdJsonClientReceive _tdJsonClientReceive =
      _lookup<ffi.NativeFunction<_TdJsonClientReceivePtr>>(
              'td_json_client_receive')
          .asFunction();

  @override
  String? tdJsonClientReceive(int clientId, [double timeout = 8]) {
    final res =
        _tdJsonClientReceive(ffi.Pointer.fromAddress(clientId), timeout);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Synchronously executes TDLib request. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  ///
  /// Returned pointer will be deallocated by TDLib during next call to [tdJsonClientReceive] or [tdJsonClientExecute]
  /// in the same thread, so it can't be used after that.
  ///
  /// [client] The client. Currently ignored for all requests, so NULL can be passed.
  ///
  /// [request] JSON-serialized null-terminated request to TDLib.
  ///
  /// return JSON-serialized null-terminated request response.
  late final _TdJsonClientExecute _tdJsonClientExecute =
      _lookup<ffi.NativeFunction<_TdJsonClientExecutePtr>>(
              'td_json_client_execute')
          .asFunction();

  @override
  String? tdJsonClientExecute(String event) {
    final req = event.toNativeUtf8();
    final res = _tdJsonClientExecute(ffi.nullptr, req);
    malloc.free(req);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Destroys the TDLib client instance. After this is called the client instance must not be used anymore.
  ///
  /// [client] The client.
  late final _TdJsonClientDestroy _tdJsonClientDestroy =
      _lookup<ffi.NativeFunction<_TdJsonClientDestroyPtr>>(
              'td_json_client_destroy')
          .asFunction();

  @override
  void tdJsonClientDestroy(int clientId) =>
      _tdJsonClientDestroy(ffi.Pointer.fromAddress(clientId));

  /// Returns an opaque identifier of a new TDLib instance.
  /// The TDLib instance will not send updates until the first request is sent to it.
  late final _TdCreateClientId _tdCreateClientId =
      _lookup<ffi.NativeFunction<_TdCreateClientIdPtr>>('td_create_client_id')
          .asFunction();

  @override
  int tdCreate() => _tdCreateClientId();

  /// Sends request to the TDLib client. May be called from any thread.
  ///
  /// [client_id] TDLib client identifier.
  /// [request] JSON-serialized null-terminated request to TDLib.
  late final _TdSend _tdSend =
      _lookup<ffi.NativeFunction<_TdSendPtr>>('td_send').asFunction();

  @override
  void tdSend(int clientId, String event) {
    final req = event.toNativeUtf8();
    _tdSend(clientId, req);
    malloc.free(req);
  }

  /// Receives incoming updates and request responses. Must not be called simultaneously from two different threads.
  ///
  /// The returned pointer can be used until the next call to [tdReceive] or [tdExecute], after which it will be deallocated by TDLib.
  ///
  /// [timeout] The maximum number of seconds allowed for this function to wait for new data.
  ///
  /// return JSON-serialized null-terminated incoming update or request response. May be *null* if the timeout expires.
  late final _TdReceive _tdReceive =
      _lookup<ffi.NativeFunction<_TdReceivePtr>>('td_receive').asFunction();

  @override
  String? tdReceive([double timeout = 8]) {
    final res = _tdReceive(timeout);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Synchronously executes a TDLib request.
  /// A request can be executed synchronously, only if it is documented with "Can be called synchronously".
  ///
  /// The returned pointer can be used until the next call to [tdReceive] or [tdExecute], after which it will be deallocated by TDLib.
  ///
  /// [request] JSON-serialized null-terminated request to TDLib.
  ///
  /// return JSON-serialized null-terminated request response.
  late final _TdExecute _tdExecute =
      _lookup<ffi.NativeFunction<_TdExecutePtr>>('td_execute').asFunction();

  @override
  String? tdExecute(String event) {
    final req = event.toNativeUtf8();
    final res = _tdExecute(req);
    malloc.free(req);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Sets the callback that will be called when a message is added to the internal TDLib log.
  /// None of the TDLib methods can be called from the callback.
  /// By default the callback is not set.
  ///
  /// [maxVerbosityLevel] The maximum verbosity level of messages for which the callback will be called.
  ///
  /// [callback] Callback that will be called when a message is added to the internal TDLib log.
  ///
  /// Pass nullptr to remove the callback.
  late final _TdSetLogMessageCallback _tdSetLogMessageCallback =
      _lookup<ffi.NativeFunction<_TdSetLogMessageCallbackPtr>>(
              'td_set_log_message_callback')
          .asFunction();

  @override
  void setLogMessageCallback(
    int maxVerbosityLevel,
    covariant ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback,
  ) {
    _tdSetLogMessageCallback(
      maxVerbosityLevel,
      callback,
    );
  }

  @override
  void removeLogMessageCallback() {
    _tdSetLogMessageCallback(0, ffi.nullptr);
  }

  @override
  num tdGetTimeout() {
    throw UnsupportedError("tdGetTimeout is only supported web platform");
  }
}

/// A type of callback function that will be called when a message is added to the internal TDLib log.
///
///  [verbosityLevel] Log verbosity level with which the message was added (-1 - 1024).
/// If 0, then TDLib will crash as soon as the callback returns.
/// None of the TDLib methods can be called from the callback.
/// [message] Null-terminated string with the logged message.
typedef TdLogMessageCallbackPtr = ffi.Void Function(
    ffi.Int32 verbosityLevel, ffi.Pointer<Utf8> message);

typedef _TdJsonClientCreatePtr = ffi.Pointer<ffi.Void> Function();
typedef _TdJsonClientSendPtr = ffi.Void Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientReceivePtr = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Double timeout);
typedef _TdJsonClientExecutePtr = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientDestroyPtr = ffi.Void Function(ffi.Pointer client);
typedef _TdCreateClientIdPtr = ffi.Int32 Function();
typedef _TdSendPtr = ffi.Void Function(
    ffi.Int32 clientId, ffi.Pointer<Utf8> request);
typedef _TdReceivePtr = ffi.Pointer<Utf8> Function(ffi.Double timeout);
typedef _TdExecutePtr = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> request);
typedef _TdSetLogMessageCallbackPtr = ffi.Void Function(
    ffi.Int32 maxVerbosityLevel,
    ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback);

typedef _TdJsonClientCreate = ffi.Pointer Function();
typedef _TdJsonClientSend = void Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientReceive = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, double timeout);
typedef _TdJsonClientExecute = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientDestroy = void Function(ffi.Pointer client);
typedef _TdCreateClientId = int Function();
typedef _TdSend = void Function(int clientId, ffi.Pointer<Utf8> request);
typedef _TdReceive = ffi.Pointer<Utf8> Function(double timeout);
typedef _TdExecute = ffi.Pointer<Utf8> Function(ffi.Pointer<Utf8> request);
typedef _TdSetLogMessageCallback = void Function(int maxVerbosityLevel,
    ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback);
