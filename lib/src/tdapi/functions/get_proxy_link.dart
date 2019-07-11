part of '../tdapi.dart';

class GetProxyLink extends TLFunction {
  int proxyId;
  dynamic extra;

  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization.
  ///[proxyId] Proxy identifier
  GetProxyLink({this.proxyId});

  /// Parse from a json
  GetProxyLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getProxyLink";

  @override
  String getConstructor() => CONSTRUCTOR;
}
