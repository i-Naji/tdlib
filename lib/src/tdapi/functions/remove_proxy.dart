part of '../tdapi.dart';

class RemoveProxy extends TdFunction {
  /// Removes a proxy server. Can be called before authorization
  RemoveProxy({this.proxyId});

  /// [proxyId] Proxy identifier
  int proxyId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
