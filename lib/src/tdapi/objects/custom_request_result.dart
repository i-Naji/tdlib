part of '../tdapi.dart';

class CustomRequestResult extends TdObject {

  /// Contains the result of a custom request
  const CustomRequestResult({
    required this.result,
    this.extra,
    this.clientId,
  });
  
  /// [result] A JSON-serialized result
  final String result;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CustomRequestResult.fromJson(Map<String, dynamic> json) => CustomRequestResult(
    result: json['result'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "result": result,
    };
  }
  
  CustomRequestResult copyWith({
    String? result,
    dynamic extra,
    int? clientId,
  }) => CustomRequestResult(
    result: result ?? this.result,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'customRequestResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
