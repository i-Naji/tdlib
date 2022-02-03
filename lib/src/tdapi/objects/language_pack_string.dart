part of '../tdapi.dart';

class LanguagePackString extends TdObject {

  /// Represents one language pack string
  const LanguagePackString({
    required this.key,
    this.value,
  });
  
  /// [key] String key 
  final String key;

  /// [value] String value; pass null if the string needs to be taken from the built-in English language pack
  final LanguagePackStringValue? value;
  
  /// Parse from a json
  factory LanguagePackString.fromJson(Map<String, dynamic> json) => LanguagePackString(
    key: json['key'],
    value: json['value'] == null ? null : LanguagePackStringValue.fromJson(json['value']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "key": key,
      "value": value?.toJson(),
    };
  }
  
  LanguagePackString copyWith({
    String? key,
    LanguagePackStringValue? value,
  }) => LanguagePackString(
    key: key ?? this.key,
    value: value ?? this.value,
  );

  static const CONSTRUCTOR = 'languagePackString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
