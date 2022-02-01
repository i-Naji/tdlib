part of '../tdapi.dart';

class TestVectorStringObject extends TdObject {

  /// A simple object containing a vector of objects that hold a string; for testing only
  const TestVectorStringObject({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] Vector of objects
  final List<TestString> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorStringObject.fromJson(Map<String, dynamic> json) => TestVectorStringObject(
    value: List<TestString>.from((json['value'] ?? []).map((item) => TestString.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "value": value.map((i) => i.toJson()).toList(),
    };
  }
  
  TestVectorStringObject copyWith({
    List<TestString>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorStringObject(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'testVectorStringObject';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
