part of '../tdapi.dart';

class AddProxy extends TdFunction {

  /// Adds a proxy server for network requests. Can be called before authorization
  const AddProxy({
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });
  
  /// [server] Proxy server IP address 
  final String server;

  /// [port] Proxy server port 
  final int port;

  /// [enable] True, if the proxy needs to be enabled 
  final bool enable;

  /// [type] Proxy type
  final ProxyType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "server": server,
      "port": port,
      "enable": enable,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  AddProxy copyWith({
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) => AddProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    enable: enable ?? this.enable,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'addProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
