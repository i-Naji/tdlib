part of '../tdapi.dart';

class PingProxy extends TLFunction {
  int proxyId;
  dynamic extra;

  /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization.
  ///[proxyId] Proxy identifier. Use 0 to ping a Telegram server without a proxy
  PingProxy({this.proxyId});

  /// Parse from a json
  PingProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'proxy_id': this.proxyId,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'pingProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
