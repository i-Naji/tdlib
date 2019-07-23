part of '../tdapi.dart';

class LanguagePackString implements TdObject {
  String key;
  var value;

  /// Represents one language pack string.
  ///[key] String key .
  /// [value] String value
  LanguagePackString({this.key, this.value});

  /// Parse from a json
  LanguagePackString.fromJson(Map<String, dynamic> json) {
    this.key = json['key'];
    this.value =
        LanguagePackStringValue.fromJson(json['value'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "key": this.key,
      "value": this.value.toJson()
    };
  }

  static const String CONSTRUCTOR = "languagePackString";

  @override
  String getConstructor() => CONSTRUCTOR;
}
