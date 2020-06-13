part of '../tdapi.dart';

class LocalizationTargetInfo extends TdObject {
  List<List<LanguagePackInfo>> languagePacks;
  dynamic extra;

  /// Contains information about the current localization target. 
  /// [languagePacks] List of available language packs for this application
  LocalizationTargetInfo({this.languagePacks});

  /// Parse from a json
  LocalizationTargetInfo.fromJson(Map<String, dynamic> json)  {
    this.languagePacks = List<List<LanguagePackInfo>>.from((json['language_packs'] ?? []).map((item) => List<LanguagePackInfo>.from((item ?? []).map((innerItem) => LanguagePackInfo.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_packs": this.languagePacks.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'localizationTargetInfo';
}