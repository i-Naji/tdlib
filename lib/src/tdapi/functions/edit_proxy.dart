part of '../tdapi.dart';

class EditProxy extends TdFunction {
  /// Edits an existing proxy server for network requests. Can be called before authorization
  EditProxy({this.proxyId, this.server, this.port, this.enable, this.type});

  /// [proxyId] Proxy identifier
  int proxyId;

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
  EditProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "server": this.server,
      "port": this.port,
      "enable": this.enable,
      "type": this.type == null ? null : this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
