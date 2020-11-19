part of '../tdapi.dart';

class GetLanguagePackInfo extends TdFunction {
  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
  GetLanguagePackInfo({this.languagePackId});

  /// [languagePackId] Language pack identifier
  String languagePackId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLanguagePackInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
