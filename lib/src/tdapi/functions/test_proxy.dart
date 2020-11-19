part of '../tdapi.dart';

class TestProxy extends TdFunction {
  /// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
  TestProxy({this.server, this.port, this.type, this.dcId, this.timeout});

  /// [server] Proxy server IP address
  String server;

  /// [port] Proxy server port
  int port;

  /// [type] Proxy type
  ProxyType type;

  /// [dcId] Identifier of a datacenter, with which to test connection
  int dcId;

  /// [timeout] The maximum overall timeout for the request
  double timeout;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "server": this.server,
      "port": this.port,
      "type": this.type == null ? null : this.type.toJson(),
      "dc_id": this.dcId,
      "timeout": this.timeout,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
