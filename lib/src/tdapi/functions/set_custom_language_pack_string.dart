part of '../tdapi.dart';

class SetCustomLanguagePackString extends TdFunction {

  /// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
  const SetCustomLanguagePackString({
    required this.languagePackId,
    required this.newString,
  });
  
  /// [languagePackId] Identifier of a previously added custom local language pack in the current localization target 
  final String languagePackId;

  /// [newString] New language pack string
  final LanguagePackString newString;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
      "new_string": newString.toJson(),
      "@extra": extra,
    };
  }
  
  SetCustomLanguagePackString copyWith({
    String? languagePackId,
    LanguagePackString? newString,
  }) => SetCustomLanguagePackString(
    languagePackId: languagePackId ?? this.languagePackId,
    newString: newString ?? this.newString,
  );

  static const CONSTRUCTOR = 'setCustomLanguagePackString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
