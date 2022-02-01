part of '../tdapi.dart';

class GetMarkdownText extends TdFunction {

  /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
  const GetMarkdownText({
    required this.text,
  });
  
  /// [text] The text
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "@extra": extra,
    };
  }
  
  GetMarkdownText copyWith({
    FormattedText? text,
  }) => GetMarkdownText(
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'getMarkdownText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
