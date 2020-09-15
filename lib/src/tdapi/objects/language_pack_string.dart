part of '../tdapi.dart';

class LanguagePackString extends TdObject {
  String key;
  LanguagePackStringValue value;

  /// Represents one language pack string. 
  /// [key] String key . 
  /// [value] String value
  LanguagePackString({this.key,
    this.value});

  /// Parse from a json
  LanguagePackString.fromJson(Map<String, dynamic> json)  {
    this.key = json['key'];
    this.value = LanguagePackStringValue.fromJson(json['value'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "key": this.key,
      "value": this.value == null ? null : this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'languagePackString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}