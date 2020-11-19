part of '../tdapi.dart';

class GetLanguagePackString extends TdFunction {
  /// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. Can be called synchronously
  GetLanguagePackString(
      {this.languagePackDatabasePath,
      this.localizationTarget,
      this.languagePackId,
      this.key});

  /// [languagePackDatabasePath] Path to the language pack database in which strings are stored
  String languagePackDatabasePath;

  /// [localizationTarget] Localization target to which the language pack belongs
  String localizationTarget;

  /// [languagePackId] Language pack identifier
  String languagePackId;

  /// [key] Language pack key of the string to be returned
  String key;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLanguagePackString.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_database_path": this.languagePackDatabasePath,
      "localization_target": this.localizationTarget,
      "language_pack_id": this.languagePackId,
      "key": this.key,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLanguagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
