part of '../tdapi.dart';

class SearchEmojis extends TdFunction {

  /// Searches for emojis by keywords. Supported only if the file database is enabled
  const SearchEmojis({
    required this.text,
    required this.exactMatch,
    required this.inputLanguageCodes,
  });
  
  /// [text] Text to search for 
  final String text;

  /// [exactMatch] True, if only emojis, which exactly match text needs to be returned 
  final bool exactMatch;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's input language; may be empty if unknown
  final List<String> inputLanguageCodes;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "exact_match": exactMatch,
      "input_language_codes": inputLanguageCodes.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  SearchEmojis copyWith({
    String? text,
    bool? exactMatch,
    List<String>? inputLanguageCodes,
  }) => SearchEmojis(
    text: text ?? this.text,
    exactMatch: exactMatch ?? this.exactMatch,
    inputLanguageCodes: inputLanguageCodes ?? this.inputLanguageCodes,
  );

  static const CONSTRUCTOR = 'searchEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
