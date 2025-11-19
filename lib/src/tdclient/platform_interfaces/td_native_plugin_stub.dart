import 'td_plugin.dart';

/// Placeholder used where `dart:ffi` isn't available (the web).
class TdNativePlugin extends TdPlugin {
  /// Constructor.
  const TdNativePlugin();

  /// Plugin registration hook; does nothing on the web.
  static void registerWith() {}

  @override
  int tdCreate() => throw UnsupportedError('TDLib FFI is not available here');

  @override
  String? tdReceive([double timeout = 8]) =>
      throw UnsupportedError('TDLib FFI is not available here');

  @override
  void tdSend(int clientId, String event) =>
      throw UnsupportedError('TDLib FFI is not available here');

  @override
  String? tdExecute(String event) =>
      throw UnsupportedError('TDLib FFI is not available here');

  @override
  void setLogMessageCallback(int maxVerbosityLevel, callback) =>
      throw UnsupportedError('TDLib FFI is not available here');

  @override
  void removeLogMessageCallback() =>
      throw UnsupportedError('TDLib FFI is not available here');

  @override
  num tdGetTimeout() =>
      throw UnsupportedError('TDLib FFI is not available here');
}
