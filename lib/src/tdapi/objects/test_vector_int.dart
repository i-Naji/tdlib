part of '../tdapi.dart';

class TestVectorInt extends TdObject {

  /// A simple object containing a vector of numbers; for testing only
  const TestVectorInt({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] Vector of numbers
  final List<int> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorInt.fromJson(Map<String, dynamic> json) => TestVectorInt(
    value: List<int>.from((json['value'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value.map((i) => i).toList(),
    };
  }
  
  TestVectorInt copyWith({
    List<int>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorInt(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'testVectorInt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
