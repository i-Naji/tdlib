import 'td_plugin.dart';
import 'web_interop.dart';
import 'package:js/js_util.dart';

/// TDLib Web Library Instance.
class TdWebPlugin extends TdPlugin {
  const TdWebPlugin();

  static late final TdWebPlatform _platform;

  // This class is set to be the default [TdPlugin].web instance.
  static void registerWith([Object? registrar]) {
    TdPlugin.initialize = initialize;
  }

  static Future<void> initialize([String? mode]) async {
    _platform = TdWebPlatform();
    await promiseToFuture(_platform.init(mode));
    TdPlugin.instance = const TdWebPlugin();
  }

  @override
  int tdCreate() => _platform.td_create();

  @override
  String? tdReceive([double? timeout]) => _platform.td_receive();

  @override
  void tdSend(int clientId, String event) => _platform.td_send(clientId, event);

  @override
  String? tdExecute(String event) => _platform.td_execute(event);

  @override
  num tdGetTimeout() => _platform.td_get_timeout();

  @override
  void removeLogMessageCallback() {
    throw UnsupportedError(
      "removeLogMessageCallback is not supported in web platform",
    );
  }

  @override
  void setLogMessageCallback(int maxVerbosityLevel, callback) {
    throw UnsupportedError(
      "setLogMessageCallback is not supported in web platform",
    );
  }
}
