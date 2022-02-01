import 'td_plugin.dart';
import 'web_interop.dart';
import 'package:js/js_util.dart';

/// TDLib Web Library Instance.
class TdWebPlugin extends TdPlugin {

  const TdWebPlugin();

  static late final TdWebPlatform _platform;

  // This class is set to be the default [TdPlugin].web instance.
  static void registerWith() {
    TdPlugin.initialize = initialize;
  }

  static Future<void> initialize([String? libPath]) async {
    _platform = TdWebPlatform();
    await promiseToFuture(_platform.initialize(libPath));
    TdPlugin.instance = const TdWebPlugin();
  }


  @override
  int tdCreate() => _platform.createClientId();

  @override
  String? tdReceive([double? timeout]) => _platform.receive();

  @override
  void tdSend(int clientId, String event) => _platform.send(clientId, event);

  @override
  String? tdExecute(String event) => _platform.execute(event);

  @override
  num tdGetTimeout() => _platform.getTimeout();

  @override
  int tdJsonClientCreate() {
    throw UnsupportedError("tdJsonClientCreate not supported in web platform");
  }

  @override
  String? tdJsonClientExecute(String event) {
    throw UnsupportedError("tdJsonClientExecute not supported in web platform");
  }

  @override
  String? tdJsonClientReceive(int clientId, [double timeout = 0]) {
    throw UnsupportedError("tdJsonClientReceive is not supported in web platform");
  }

  @override
  void tdJsonClientSend(int clientId, String event) {
    throw UnsupportedError("tdJsonClientSend is not supported in web platform");
  }

  @override
  void tdJsonClientDestroy(int clientId) {
    throw UnsupportedError("tdJsonClientDestroy is not supported in web platform");
  }

  @override
  void removeLogMessageCallback() {
    throw UnsupportedError("removeLogMessageCallback is not supported in web platform");
  }

  @override
  void setLogMessageCallback(int maxVerbosityLevel, callback) {
    throw UnsupportedError("setLogMessageCallback is not supported in web platform");
  }

}