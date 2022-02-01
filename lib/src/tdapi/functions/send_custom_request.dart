part of '../tdapi.dart';

class SendCustomRequest extends TdFunction {

  /// Sends a custom request; for bots only
  const SendCustomRequest({
    required this.method,
    required this.parameters,
  });
  
  /// [method] The method name 
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "method": method,
      "parameters": parameters,
      "@extra": extra,
    };
  }
  
  SendCustomRequest copyWith({
    String? method,
    String? parameters,
  }) => SendCustomRequest(
    method: method ?? this.method,
    parameters: parameters ?? this.parameters,
  );

  static const CONSTRUCTOR = 'sendCustomRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
