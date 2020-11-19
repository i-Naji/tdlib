part of '../tdapi.dart';

class LanguagePackInfo extends TdObject {
  /// Contains information about a language pack
  LanguagePackInfo(
      {this.id,
      this.baseLanguagePackId,
      this.name,
      this.nativeName,
      this.pluralCode,
      this.isOfficial,
      this.isRtl,
      this.isBeta,
      this.isInstalled,
      this.totalStringCount,
      this.translatedStringCount,
      this.localStringCount,
      this.translationUrl});

  /// [id] Unique language pack identifier
  String id;

  /// [baseLanguagePackId] Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it should be fetched from base language pack. Unsupported in custom language packs
  String baseLanguagePackId;

  /// [name] Language name
  String name;

  /// [nativeName] Name of the language in that language
  String nativeName;

  /// [pluralCode] A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
  String pluralCode;

  /// [isOfficial] True, if the language pack is official
  bool isOfficial;

  /// [isRtl] True, if the language pack strings are RTL
  bool isRtl;

  /// [isBeta] True, if the language pack is a beta language pack
  bool isBeta;

  /// [isInstalled] True, if the language pack is installed by the current user
  bool isInstalled;

  /// [totalStringCount] Total number of non-deleted strings from the language pack
  int totalStringCount;

  /// [translatedStringCount] Total number of translated strings from the language pack
  int translatedStringCount;

  /// [localStringCount] Total number of non-deleted strings from the language pack available locally
  int localStringCount;

  /// [translationUrl] Link to language translation interface; empty for custom local language packs
  String translationUrl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  LanguagePackInfo.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.baseLanguagePackId = json['base_language_pack_id'];
    this.name = json['name'];
    this.nativeName = json['native_name'];
    this.pluralCode = json['plural_code'];
    this.isOfficial = json['is_official'];
    this.isRtl = json['is_rtl'];
    this.isBeta = json['is_beta'];
    this.isInstalled = json['is_installed'];
    this.totalStringCount = json['total_string_count'];
    this.translatedStringCount = json['translated_string_count'];
    this.localStringCount = json['local_string_count'];
    this.translationUrl = json['translation_url'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "base_language_pack_id": this.baseLanguagePackId,
      "name": this.name,
      "native_name": this.nativeName,
      "plural_code": this.pluralCode,
      "is_official": this.isOfficial,
      "is_rtl": this.isRtl,
      "is_beta": this.isBeta,
      "is_installed": this.isInstalled,
      "total_string_count": this.totalStringCount,
      "translated_string_count": this.translatedStringCount,
      "local_string_count": this.localStringCount,
      "translation_url": this.translationUrl,
    };
  }

  static const CONSTRUCTOR = 'languagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
