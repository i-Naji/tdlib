part of '../tdapi.dart';

class SynchronizeLanguagePack extends TdFunction {
  String languagePackId;
  dynamic extra;

  /// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization. 
  /// [languagePackId] Language pack identifier
  SynchronizeLanguagePack({this.languagePackId});

  /// Parse from a json
  SynchronizeLanguagePack.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'synchronizeLanguagePack';
}