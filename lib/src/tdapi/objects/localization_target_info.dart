part of '../tdapi.dart';

class LocalizationTargetInfo extends TdObject {
  List<LanguagePackInfo> languagePacks;
  dynamic extra;

  /// Contains information about the current localization target. 
  /// [languagePacks] List of available language packs for this application
  LocalizationTargetInfo({this.languagePacks});

  /// Parse from a json
  LocalizationTargetInfo.fromJson(Map<String, dynamic> json)  {
    this.languagePacks = List<LanguagePackInfo>.from((json['language_packs'] ?? []).map((item) => LanguagePackInfo.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_packs": this.languagePacks.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'localizationTargetInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}