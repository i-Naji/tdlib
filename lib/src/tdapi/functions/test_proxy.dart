part of '../tdapi.dart';

class TestProxy extends TdFunction {

  /// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
  const TestProxy({
    required this.server,
    required this.port,
    required this.type,
    required this.dcId,
    required this.timeout,
  });
  
  /// [server] Proxy server IP address 
  final String server;

  /// [port] Proxy server port 
  final int port;

  /// [type] Proxy type
  final ProxyType type;

  /// [dcId] Identifier of a datacenter, with which to test connection
  final int dcId;

  /// [timeout] The maximum overall timeout for the request
  final double timeout;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "server": server,
      "port": port,
      "type": type.toJson(),
      "dc_id": dcId,
      "timeout": timeout,
      "@extra": extra,
    };
  }
  
  TestProxy copyWith({
    String? server,
    int? port,
    ProxyType? type,
    int? dcId,
    double? timeout,
  }) => TestProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    type: type ?? this.type,
    dcId: dcId ?? this.dcId,
    timeout: timeout ?? this.timeout,
  );

  static const CONSTRUCTOR = 'testProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
