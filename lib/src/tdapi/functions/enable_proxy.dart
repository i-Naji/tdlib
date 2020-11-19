part of '../tdapi.dart';

class EnableProxy extends TdFunction {
  /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
  EnableProxy({this.proxyId});

  /// [proxyId] Proxy identifier
  int proxyId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  EnableProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'enableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
