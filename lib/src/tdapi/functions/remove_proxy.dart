part of '../tdapi.dart';

class RemoveProxy extends TLFunction {
  int proxyId;
  dynamic extra;

  /// Removes a proxy server. Can be called before authorization.
  ///[proxyId] Proxy identifier
  RemoveProxy({this.proxyId});

  /// Parse from a json
  RemoveProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'proxy_id': this.proxyId,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'removeProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
