import 'dart:js_interop';

import 'td_plugin.dart';
import 'web_interop.dart';

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
    await _platform.init(mode?.toJS).toDart;
    TdPlugin.instance = const TdWebPlugin();
  }

  @override
  int tdCreate() => _platform.tdCreate();

  @override
  String? tdReceive([double? timeout]) => _platform.tdReceive();

  @override
  void tdSend(int clientId, String event) => _platform.tdSend(clientId, event);

  @override
  String? tdExecute(String event) => _platform.tdExecute(event);

  @override
  num tdGetTimeout() => _platform.tdGetTimeout();

  @override
  void removeLogMessageCallback() {
    throw UnsupportedError(
      "removeLogMessageCallback is not supported in web platform",
    );
  }

  @override
  void setLogMessageCallback(int maxVerbosityLevel, Object? callback) {
    throw UnsupportedError(
      "setLogMessageCallback is not supported in web platform",
    );
  }
}
