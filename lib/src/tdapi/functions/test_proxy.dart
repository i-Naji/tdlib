part of '../tdapi.dart';

class TestProxy extends TdFunction {
  String server;
  int port;
  ProxyType type;
  int dcId;
  double timeout;
  dynamic extra;

  /// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization. 
  /// [server] Proxy server IP address . 
  /// [port] Proxy server port . 
  /// [type] Proxy type. 
  /// [dcId] Identifier of a datacenter, with which to test connection. 
  /// [timeout] The maximum overall timeout for the request
  TestProxy({this.server,
    this.port,
    this.type,
    this.dcId,
    this.timeout});

  /// Parse from a json
  TestProxy.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "server": this.server,
      "port": this.port,
      "type": this.type.toJson(),
      "dc_id": this.dcId,
      "timeout": this.timeout,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testProxy';
}