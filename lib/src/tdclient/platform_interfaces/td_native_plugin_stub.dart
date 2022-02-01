import 'td_plugin.dart';
/// TDLib Native Library Instance.
class TdNativePlugin extends TdPlugin {

  /// This class is set to be the default [TdPlugin] initializer.
  static void registerWith() {}

  @override
  int tdCreate() {
    throw UnimplementedError();
  }

  @override
  String? tdExecute(String event) {
    throw UnimplementedError();
  }

  @override
  int tdJsonClientCreate() {
    throw UnimplementedError();
  }

  @override
  void tdJsonClientDestroy(int clientId) {
    throw UnimplementedError();
  }

  @override
  String? tdJsonClientExecute(String event) {
    throw UnimplementedError();
  }

  @override
  String? tdJsonClientReceive(int clientId, [double timeout = 8]) {
    throw UnimplementedError();
  }

  @override
  void tdJsonClientSend(int clientId, String event) {
    throw UnimplementedError();
  }

  @override
  String? tdReceive([double timeout = 8]) {
    throw UnimplementedError();
  }

  @override
  void tdSend(int clientId, String event) {
    throw UnimplementedError();
  }

  @override
  void removeLogMessageCallback() {
    throw UnimplementedError();
  }

  @override
  void setLogMessageCallback(int maxVerbosityLevel, callback) {
    throw UnimplementedError();
  }

  @override
  num tdGetTimeout() {
    throw UnimplementedError();
  }
}