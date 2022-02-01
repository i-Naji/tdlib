part of '../tdapi.dart';

class GetLanguagePackInfo extends TdFunction {

  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
  const GetLanguagePackInfo({
    required this.languagePackId,
  });
  
  /// [languagePackId] Language pack identifier
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
      "@extra": extra,
    };
  }
  
  GetLanguagePackInfo copyWith({
    String? languagePackId,
  }) => GetLanguagePackInfo(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const CONSTRUCTOR = 'getLanguagePackInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
