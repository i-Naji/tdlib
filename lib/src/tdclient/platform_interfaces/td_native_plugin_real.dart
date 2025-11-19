// ignore_for_file: deprecated_member_use_from_same_package
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../tdjson_bindings.dart' as tdjson;
import 'td_plugin.dart';

/// TDLib on Android, iOS, macOS, Windows and Linux, through `dart:ffi`.
///
/// The native library comes from this package's build hook, so there is no
/// library path to configure and every isolate can call TDLib directly.
class TdNativePlugin extends TdPlugin {
  /// Constructor.
  const TdNativePlugin();

  /// Registered by Flutter as the `dartPluginClass` on native platforms.
  static void registerWith() {
    TdPlugin.instance = const TdNativePlugin();
    TdPlugin.initialize = initialize;
  }

  /// Kept for compatibility. [libPath] is ignored: the build hook bundles the
  /// library (set `hooks.user_defines.tdlib.library_path` to use your own).
  static Future<void> initialize([String? libPath]) async {
    TdPlugin.instance = const TdNativePlugin();
  }

  @override
  int tdCreate() => tdjson.tdCreateClientId();

  @override
  String? tdReceive([double timeout = 8]) => tdjson.tdReceiveJson(timeout);

  @override
  void tdSend(int clientId, String event) => tdjson.tdSendJson(clientId, event);

  @override
  String? tdExecute(String event) => tdjson.tdExecuteJson(event);

  /// [callback] is a native function pointer, e.g. from
  /// `NativeCallable<TdLogMessageCallbackPtr>.isolateLocal(...).nativeFunction`.
  @override
  void setLogMessageCallback(
    int maxVerbosityLevel,
    covariant ffi.Pointer<ffi.NativeFunction<TdLogMessageCallbackPtr>> callback,
  ) => tdjson.tdSetLogMessageCallback(maxVerbosityLevel, callback);

  @override
  void removeLogMessageCallback() =>
      tdjson.tdSetLogMessageCallback(0, ffi.nullptr);

  @override
  int tdJsonClientCreate() => tdjson.tdJsonClientCreateRaw().address;

  @override
  void tdJsonClientDestroy(int clientId) =>
      tdjson.tdJsonClientDestroyRaw(ffi.Pointer.fromAddress(clientId));

  @override
  void tdJsonClientSend(int clientId, String event) {
    final request = event.toNativeUtf8();
    try {
      tdjson.tdJsonClientSendRaw(ffi.Pointer.fromAddress(clientId), request);
    } finally {
      malloc.free(request);
    }
  }

  @override
  String? tdJsonClientReceive(int clientId, [double timeout = 8]) {
    final result = tdjson.tdJsonClientReceiveRaw(
      ffi.Pointer.fromAddress(clientId),
      timeout,
    );
    return result == ffi.nullptr ? null : result.toDartString();
  }

  @override
  String? tdJsonClientExecute(String event) {
    final request = event.toNativeUtf8();
    try {
      final result = tdjson.tdJsonClientExecuteRaw(ffi.nullptr, request);
      return result == ffi.nullptr ? null : result.toDartString();
    } finally {
      malloc.free(request);
    }
  }

  @override
  num tdGetTimeout() =>
      throw UnsupportedError('tdGetTimeout is only supported on the web');
}

/// Native type of TDLib's log callback: `(int verbosityLevel, char* message)`.
/// A verbosity level of 0 means TDLib crashes as soon as the callback returns.
typedef TdLogMessageCallbackPtr =
    ffi.Void Function(ffi.Int32 verbosityLevel, ffi.Pointer<Utf8> message);
