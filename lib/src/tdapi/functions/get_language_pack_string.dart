part of '../tdapi.dart';

class GetLanguagePackString extends TLFunction {
  String languagePackDatabasePath;
  String localizationTarget;
  String languagePackId;
  String key;
  dynamic extra;

  /// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[languagePackDatabasePath] Path to the language pack database in which strings are stored .
  /// [localizationTarget] Localization target to which the language pack belongs .
  /// [languagePackId] Language pack identifier .
  /// [key] Language pack key of the string to be returned
  GetLanguagePackString(
      {this.languagePackDatabasePath,
      this.localizationTarget,
      this.languagePackId,
      this.key});

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
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getLanguagePackString";

  @override
  String getConstructor() => CONSTRUCTOR;
}
