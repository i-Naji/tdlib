part of '../tdapi.dart';

class LocalizationTargetInfo implements TdObject {
  List<LanguagePackInfo> languagePacks;
  dynamic extra;

  /// Contains information about the current localization target.
  ///[languagePacks] List of available language packs for this application
  LocalizationTargetInfo({this.languagePacks});

  /// Parse from a json
  LocalizationTargetInfo.fromJson(Map<String, dynamic> json) {
    this.languagePacks = List<LanguagePackInfo>.from(
        (json['language_packs'] ?? [])
            .map((listValue) => LanguagePackInfo.fromJson(listValue))
            .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_packs":
          this.languagePacks.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "localizationTargetInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
