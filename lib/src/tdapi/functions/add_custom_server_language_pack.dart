part of '../tdapi.dart';

class AddCustomServerLanguagePack extends TdFunction {

  /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
  const AddCustomServerLanguagePack({
    required this.languagePackId,
  });
  
  /// [languagePackId] Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
      "@extra": extra,
    };
  }
  
  AddCustomServerLanguagePack copyWith({
    String? languagePackId,
  }) => AddCustomServerLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const CONSTRUCTOR = 'addCustomServerLanguagePack';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
