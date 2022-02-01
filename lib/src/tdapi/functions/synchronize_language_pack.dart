part of '../tdapi.dart';

class SynchronizeLanguagePack extends TdFunction {

  /// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization
  const SynchronizeLanguagePack({
    required this.languagePackId,
  });
  
  /// [languagePackId] Language pack identifier
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
      "@extra": extra,
    };
  }
  
  SynchronizeLanguagePack copyWith({
    String? languagePackId,
  }) => SynchronizeLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const CONSTRUCTOR = 'synchronizeLanguagePack';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
