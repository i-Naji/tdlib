part of '../tdapi.dart';

class LanguagePackStrings extends TdObject {
  List<List<LanguagePackString>> strings;
  dynamic extra;

  /// Contains a list of language pack strings. 
  /// [strings] A list of language pack strings
  LanguagePackStrings({this.strings});

  /// Parse from a json
  LanguagePackStrings.fromJson(Map<String, dynamic> json)  {
    this.strings = List<List<LanguagePackString>>.from((json['strings'] ?? []).map((item) => List<LanguagePackString>.from((item ?? []).map((innerItem) => LanguagePackString.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "strings": this.strings.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'languagePackStrings';
}