part of '../tdapi.dart';

class LanguagePackInfo implements TLObject {
  String id;
  String baseLanguagePackId;
  String name;
  String nativeName;
  String pluralCode;
  bool isOfficial;
  bool isRtl;
  bool isBeta;
  bool isInstalled;
  int totalStringCount;
  int translatedStringCount;
  int localStringCount;
  String translationUrl;
  dynamic extra;

  /// Contains information about a language pack.
  ///[id] Unique language pack identifier.
  /// [baseLanguagePackId] Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it should be fetched from base language pack. Unsupported in custom language packs.
  /// [name] Language name .
  /// [nativeName] Name of the language in that language.
  /// [pluralCode] A language code to be used to apply plural forms. See https.
  /// [isOfficial] True, if the language pack is official .
  /// [isRtl] True, if the language pack strings are RTL .
  /// [isBeta] True, if the language pack is a beta language pack.
  /// [isInstalled] True, if the language pack is installed by the current user.
  /// [totalStringCount] Total number of non-deleted strings from the language pack .
  /// [translatedStringCount] Total number of translated strings from the language pack.
  /// [localStringCount] Total number of non-deleted strings from the language pack available locally .
  /// [translationUrl] Link to language translation interface; empty for custom local language packs
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
      '@type': CONSTRUCTOR,
      'id': this.id,
      'base_language_pack_id': this.baseLanguagePackId,
      'name': this.name,
      'native_name': this.nativeName,
      'plural_code': this.pluralCode,
      'is_official': this.isOfficial,
      'is_rtl': this.isRtl,
      'is_beta': this.isBeta,
      'is_installed': this.isInstalled,
      'total_string_count': this.totalStringCount,
      'translated_string_count': this.translatedStringCount,
      'local_string_count': this.localStringCount,
      'translation_url': this.translationUrl
    };
  }

  static const String CONSTRUCTOR = 'languagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
