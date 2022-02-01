part of '../tdapi.dart';

class GetLanguagePackString extends TdFunction {

  /// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. Can be called synchronously
  const GetLanguagePackString({
    required this.languagePackDatabasePath,
    required this.localizationTarget,
    required this.languagePackId,
    required this.key,
  });
  
  /// [languagePackDatabasePath] Path to the language pack database in which strings are stored
  final String languagePackDatabasePath;

  /// [localizationTarget] Localization target to which the language pack belongs 
  final String localizationTarget;

  /// [languagePackId] Language pack identifier 
  final String languagePackId;

  /// [key] Language pack key of the string to be returned
  final String key;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_database_path": languagePackDatabasePath,
      "localization_target": localizationTarget,
      "language_pack_id": languagePackId,
      "key": key,
      "@extra": extra,
    };
  }
  
  GetLanguagePackString copyWith({
    String? languagePackDatabasePath,
    String? localizationTarget,
    String? languagePackId,
    String? key,
  }) => GetLanguagePackString(
    languagePackDatabasePath: languagePackDatabasePath ?? this.languagePackDatabasePath,
    localizationTarget: localizationTarget ?? this.localizationTarget,
    languagePackId: languagePackId ?? this.languagePackId,
    key: key ?? this.key,
  );

  static const CONSTRUCTOR = 'getLanguagePackString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
