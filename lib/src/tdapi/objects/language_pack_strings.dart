part of '../tdapi.dart';

class LanguagePackStrings extends TdObject {
  /// Contains a list of language pack strings
  LanguagePackStrings({this.strings});

  /// [strings] A list of language pack strings
  List<LanguagePackString> strings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  LanguagePackStrings.fromJson(Map<String, dynamic> json) {
    this.strings = List<LanguagePackString>.from((json['strings'] ?? [])
        .map((item) => LanguagePackString.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "strings": this.strings.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'languagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
