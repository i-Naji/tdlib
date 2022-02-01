part of '../tdapi.dart';

class SetCustomLanguagePack extends TdFunction {

  /// Adds or changes a custom local language pack to the current localization target
  const SetCustomLanguagePack({
    required this.info,
    required this.strings,
  });
  
  /// [info] Information about the language pack. Language pack setCustomLanguagePack must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization 
  final LanguagePackInfo info;

  /// [strings] Strings of the new language pack
  final List<LanguagePackString> strings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "info": info.toJson(),
      "strings": strings.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  SetCustomLanguagePack copyWith({
    LanguagePackInfo? info,
    List<LanguagePackString>? strings,
  }) => SetCustomLanguagePack(
    info: info ?? this.info,
    strings: strings ?? this.strings,
  );

  static const CONSTRUCTOR = 'setCustomLanguagePack';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
