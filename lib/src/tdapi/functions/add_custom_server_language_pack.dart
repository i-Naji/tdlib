part of '../tdapi.dart';

class AddCustomServerLanguagePack extends TLFunction {
  String languagePackId;
  dynamic extra;

  /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization.
  ///[languagePackId] Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
  AddCustomServerLanguagePack({this.languagePackId});

  /// Parse from a json
  AddCustomServerLanguagePack.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "addCustomServerLanguagePack";

  @override
  String getConstructor() => CONSTRUCTOR;
}
