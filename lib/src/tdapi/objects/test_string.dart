part of '../tdapi.dart';

class TestString extends TdObject {

  /// A simple object containing a string; for testing only
  const TestString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] String
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestString.fromJson(Map<String, dynamic> json) => TestString(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value,
    };
  }
  
  TestString copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => TestString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'testString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
