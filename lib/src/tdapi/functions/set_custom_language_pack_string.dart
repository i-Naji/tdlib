part of '../tdapi.dart';

class SetCustomLanguagePackString extends TdFunction {
  String languagePackId;
  LanguagePackString newString;
  dynamic extra;

  /// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization. 
  /// [languagePackId] Identifier of a previously added custom local language pack in the current localization target . 
  /// [newString] New language pack string
  SetCustomLanguagePackString({this.languagePackId,
    this.newString});

  /// Parse from a json
  SetCustomLanguagePackString.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "new_string": this.newString.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCustomLanguagePackString';
}