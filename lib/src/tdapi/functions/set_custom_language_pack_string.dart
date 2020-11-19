part of '../tdapi.dart';

class SetCustomLanguagePackString extends TdFunction {
  /// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
  SetCustomLanguagePackString({this.languagePackId, this.newString});

  /// [languagePackId] Identifier of a previously added custom local language pack in the current localization target
  String languagePackId;

  /// [newString] New language pack string
  LanguagePackString newString;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetCustomLanguagePackString.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "new_string": this.newString == null ? null : this.newString.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCustomLanguagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
