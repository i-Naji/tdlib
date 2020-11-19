part of '../tdapi.dart';

class AddProxy extends TdFunction {
  /// Adds a proxy server for network requests. Can be called before authorization
  AddProxy({this.server, this.port, this.enable, this.type});

  /// [server] Proxy server IP address
  String server;

  /// [port] Proxy server port
  int port;

  /// [enable] True, if the proxy should be enabled
  bool enable;

  /// [type] Proxy type
  ProxyType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AddProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "server": this.server,
      "port": this.port,
      "enable": this.enable,
      "type": this.type == null ? null : this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
