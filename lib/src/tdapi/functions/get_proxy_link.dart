part of '../tdapi.dart';

class GetProxyLink extends TdFunction {

  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
  const GetProxyLink({
    required this.proxyId,
  });
  
  /// [proxyId] Proxy identifier
  final int proxyId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }
  
  GetProxyLink copyWith({
    int? proxyId,
  }) => GetProxyLink(
    proxyId: proxyId ?? this.proxyId,
  );

  static const CONSTRUCTOR = 'getProxyLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
