/// FFI bindings to TDLib's JSON interface (`td_json_client.h`).
///
/// The native library is bundled by this package's build hook
/// (`hook/build.dart`) as a code asset with this file's asset id, so these
/// functions resolve automatically in every isolate. No `DynamicLibrary.open`.
@DefaultAsset('package:tdlib/src/tdclient/tdjson_bindings.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// Returns an identifier of a new TDLib client. The client sends no updates
/// until the first request is sent to it.
@Native<Int32 Function()>(symbol: 'td_create_client_id', isLeaf: true)
external int tdCreateClientId();

/// Sends a null-terminated JSON request to a TDLib client. Thread-safe.
@Native<Void Function(Int32, Pointer<Utf8>)>(symbol: 'td_send', isLeaf: true)
external void tdSendRaw(int clientId, Pointer<Utf8> request);

/// Receives the next update or response, waiting up to [timeout] seconds.
/// Must never run on two threads at once. The returned buffer stays valid
/// until the next `td_receive` or `td_execute` call.
@Native<Pointer<Utf8> Function(Double)>(symbol: 'td_receive')
external Pointer<Utf8> tdReceiveRaw(double timeout);

/// Executes a request synchronously (only requests documented as such).
@Native<Pointer<Utf8> Function(Pointer<Utf8>)>(symbol: 'td_execute')
external Pointer<Utf8> tdExecuteRaw(Pointer<Utf8> request);

/// Creates an instance of TDLib's older per-instance interface.
@Native<Pointer<Void> Function()>(symbol: 'td_json_client_create')
external Pointer<Void> tdJsonClientCreateRaw();

/// Sends a JSON request to a [tdJsonClientCreateRaw] instance.
@Native<Void Function(Pointer<Void>, Pointer<Utf8>)>(
  symbol: 'td_json_client_send',
)
external void tdJsonClientSendRaw(Pointer<Void> client, Pointer<Utf8> request);

/// Receives the next event of a [tdJsonClientCreateRaw] instance.
@Native<Pointer<Utf8> Function(Pointer<Void>, Double)>(
  symbol: 'td_json_client_receive',
)
external Pointer<Utf8> tdJsonClientReceiveRaw(
  Pointer<Void> client,
  double timeout,
);

/// Executes a synchronous request (the client argument is ignored).
@Native<Pointer<Utf8> Function(Pointer<Void>, Pointer<Utf8>)>(
  symbol: 'td_json_client_execute',
)
external Pointer<Utf8> tdJsonClientExecuteRaw(
  Pointer<Void> client,
  Pointer<Utf8> request,
);

/// Destroys a [tdJsonClientCreateRaw] instance.
@Native<Void Function(Pointer<Void>)>(symbol: 'td_json_client_destroy')
external void tdJsonClientDestroyRaw(Pointer<Void> client);

/// Native signature of TDLib's log message callback.
typedef TdLogMessageCallbackNative =
    Void Function(Int32 verbosityLevel, Pointer<Utf8> message);

/// Sets (or, with `nullptr`, removes) the TDLib log message callback.
@Native<
  Void Function(Int32, Pointer<NativeFunction<TdLogMessageCallbackNative>>)
>(symbol: 'td_set_log_message_callback')
external void tdSetLogMessageCallback(
  int maxVerbosityLevel,
  Pointer<NativeFunction<TdLogMessageCallbackNative>> callback,
);

/// Sends a JSON [request] string to client [clientId].
void tdSendJson(int clientId, String request) {
  final pointer = request.toNativeUtf8();
  try {
    tdSendRaw(clientId, pointer);
  } finally {
    malloc.free(pointer);
  }
}

/// Receives one event as a JSON string, or null when [timeout] expires.
String? tdReceiveJson(double timeout) {
  final result = tdReceiveRaw(timeout);
  return result == nullptr ? null : result.toDartString();
}

/// Executes a synchronous JSON [request]; returns the JSON response.
String? tdExecuteJson(String request) {
  final pointer = request.toNativeUtf8();
  try {
    final result = tdExecuteRaw(pointer);
    return result == nullptr ? null : result.toDartString();
  } finally {
    malloc.free(pointer);
  }
}
