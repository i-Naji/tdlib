part of '../tdapi.dart';

class ParseTextEntities extends TdFunction {

  /// Parses Bold, Italic, Underline, Strikethrough, Spoiler, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
  const ParseTextEntities({
    required this.text,
    required this.parseMode,
  });
  
  /// [text] The text to parse 
  final String text;

  /// [parseMode] Text parse mode
  final TextParseMode parseMode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "parse_mode": parseMode.toJson(),
      "@extra": extra,
    };
  }
  
  ParseTextEntities copyWith({
    String? text,
    TextParseMode? parseMode,
  }) => ParseTextEntities(
    text: text ?? this.text,
    parseMode: parseMode ?? this.parseMode,
  );

  static const CONSTRUCTOR = 'parseTextEntities';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
