part of '../tdapi.dart';

class SetCustomLanguagePack extends TdFunction {
  LanguagePackInfo info;
  List<List<LanguagePackString>> strings;
  dynamic extra;

  /// Adds or changes a custom local language pack to the current localization target. 
  /// [info] Information about the language pack. Language pack setCustomLanguagePack must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization . 
  /// [strings] Strings of the new language pack
  SetCustomLanguagePack({this.info,
    this.strings});

  /// Parse from a json
  SetCustomLanguagePack.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "info": this.info.toJson(),
      "strings": this.strings.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCustomLanguagePack';
}