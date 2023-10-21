/// FFI bindings to TDLib's JSON interface (`td_json_client.h`).
///
/// [loadTdJson] binds them in the calling isolate; every isolate that uses
/// them has to call it once (the runtime and its receive isolate do).
library;

import 'dart:ffi';
import 'dart:io' show Platform;

import 'package:ffi/ffi.dart';

/// Returns an identifier of a new TDLib client. The client sends no updates
/// until the first request is sent to it.
late final int Function() tdCreateClientId;

/// Sends a null-terminated JSON request to a TDLib client. Thread-safe.
late final void Function(int clientId, Pointer<Utf8> request) tdSendRaw;

/// Receives the next update or response, waiting up to `timeout` seconds.
/// Must never run on two threads at once. The returned buffer stays valid
/// until the next `td_receive` or `td_execute` call.
late final Pointer<Utf8> Function(double timeout) tdReceiveRaw;

/// Executes a request synchronously (only requests documented as such).
late final Pointer<Utf8> Function(Pointer<Utf8> request) tdExecuteRaw;

bool _loaded = false;

/// Opens libtdjson and binds the functions above in this isolate.
///
/// [path] defaults to `libtdjson.so` on Android and Linux, `tdjson.dll` on
/// Windows, and the running process on iOS and macOS, where the library is
/// linked into the app. Later calls do nothing.
void loadTdJson([String? path]) {
  if (_loaded) return;
  final library = path != null
      ? DynamicLibrary.open(path)
      : Platform.isAndroid || Platform.isLinux
          ? DynamicLibrary.open('libtdjson.so')
          : Platform.isWindows
              ? DynamicLibrary.open('tdjson.dll')
              : DynamicLibrary.process();
  tdCreateClientId = library.lookupFunction<Int32 Function(), int Function()>(
      'td_create_client_id',
      isLeaf: true);
  tdSendRaw = library.lookupFunction<Void Function(Int32, Pointer<Utf8>),
      void Function(int, Pointer<Utf8>)>('td_send', isLeaf: true);
  tdReceiveRaw = library.lookupFunction<Pointer<Utf8> Function(Double),
      Pointer<Utf8> Function(double)>('td_receive');
  tdExecuteRaw = library.lookupFunction<Pointer<Utf8> Function(Pointer<Utf8>),
      Pointer<Utf8> Function(Pointer<Utf8>)>('td_execute');
  _loaded = true;
}

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
