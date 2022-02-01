part of '../tdapi.dart';

class JsonObjectMember extends TdObject {

  /// Represents one member of a JSON object
  const JsonObjectMember({
    required this.key,
    required this.value,
  });
  
  /// [key] Member's key 
  final String key;

  /// [value] Member's value
  final JsonValue value;
  
  /// Parse from a json
  factory JsonObjectMember.fromJson(Map<String, dynamic> json) => JsonObjectMember(
    key: json['key'],
    value: JsonValue.fromJson(json['value']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "key": key,
      "value": value.toJson(),
    };
  }
  
  JsonObjectMember copyWith({
    String? key,
    JsonValue? value,
  }) => JsonObjectMember(
    key: key ?? this.key,
    value: value ?? this.value,
  );

  static const CONSTRUCTOR = 'jsonObjectMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
