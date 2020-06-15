part of '../tdapi.dart';

class JsonObjectMember extends TdObject {
  String key;
  JsonValue value;

  /// Represents one member of a JSON object. 
  /// [key] Member's key . 
  /// [value] Member's value
  JsonObjectMember({this.key,
    this.value});

  /// Parse from a json
  JsonObjectMember.fromJson(Map<String, dynamic> json)  {
    this.key = json['key'];
    this.value = JsonValue.fromJson(json['value'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "key": this.key,
      "value": this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'jsonObjectMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}