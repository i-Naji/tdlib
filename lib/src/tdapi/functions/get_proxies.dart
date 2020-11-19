part of '../tdapi.dart';

class GetProxies extends TdFunction {
  /// Returns list of proxies that are currently set up. Can be called before authorization
  GetProxies();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetProxies.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getProxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
