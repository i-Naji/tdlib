part of '../tdapi.dart';

class TestInt extends TdObject {

  /// A simple object containing a number; for testing only
  const TestInt({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] Number
  final int value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestInt.fromJson(Map<String, dynamic> json) => TestInt(
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
  
  TestInt copyWith({
    int? value,
    dynamic extra,
    int? clientId,
  }) => TestInt(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'testInt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
