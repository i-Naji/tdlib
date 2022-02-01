part of '../tdapi.dart';

class ParseMarkdown extends TdFunction {

  /// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
  const ParseMarkdown({
    required this.text,
  });
  
  /// [text] The text to parse. For example, "__italic__
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "@extra": extra,
    };
  }
  
  ParseMarkdown copyWith({
    FormattedText? text,
  }) => ParseMarkdown(
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'parseMarkdown';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
