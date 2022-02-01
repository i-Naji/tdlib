part of '../tdapi.dart';

class GetLanguagePackStrings extends TdFunction {

  /// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization
  const GetLanguagePackStrings({
    required this.languagePackId,
    required this.keys,
  });
  
  /// [languagePackId] Language pack identifier of the strings to be returned 
  final String languagePackId;

  /// [keys] Language pack keys of the strings to be returned; leave empty to request all available strings
  final List<String> keys;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
      "keys": keys.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  GetLanguagePackStrings copyWith({
    String? languagePackId,
    List<String>? keys,
  }) => GetLanguagePackStrings(
    languagePackId: languagePackId ?? this.languagePackId,
    keys: keys ?? this.keys,
  );

  static const CONSTRUCTOR = 'getLanguagePackStrings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
