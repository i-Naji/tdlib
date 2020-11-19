part of '../tdapi.dart';

class JsonObjectMember extends TdObject {
  /// Represents one member of a JSON object
  JsonObjectMember({this.key, this.value});

  /// [key] Member's key
  String key;

  /// [value] Member's value
  JsonValue value;

  /// Parse from a json
  JsonObjectMember.fromJson(Map<String, dynamic> json) {
    this.key = json['key'];
    this.value = JsonValue.fromJson(json['value'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "key": this.key,
      "value": this.value == null ? null : this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'jsonObjectMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
