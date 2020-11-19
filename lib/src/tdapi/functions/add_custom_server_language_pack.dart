part of '../tdapi.dart';

class AddCustomServerLanguagePack extends TdFunction {
  /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
  AddCustomServerLanguagePack({this.languagePackId});

  /// [languagePackId] Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
  String languagePackId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AddCustomServerLanguagePack.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addCustomServerLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}
