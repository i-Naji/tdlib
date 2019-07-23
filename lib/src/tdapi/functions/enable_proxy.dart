part of '../tdapi.dart';

class EnableProxy extends TdFunction {
  int proxyId;
  dynamic extra;

  /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization.
  ///[proxyId] Proxy identifier
  EnableProxy({this.proxyId});

  /// Parse from a json
  EnableProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "enableProxy";

  @override
  String getConstructor() => CONSTRUCTOR;
}
