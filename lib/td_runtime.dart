/// TDLib runtime for Android, iOS, macOS, Windows and Linux: one background
/// receive isolate, typed requests and per-client update streams.
///
/// Not available on the web (it needs `dart:ffi` and `dart:isolate`); use the
/// low-level functions in `package:tdlib/td_client.dart` there.
library;

export 'package:tdlib/src/runtime/td_exceptions.dart';
export 'package:tdlib/src/runtime/td_runtime.dart';
export 'package:tdlib/src/tdapi/tdapi.dart';
