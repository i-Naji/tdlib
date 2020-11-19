part of '../tdapi.dart';

class GetMarkdownText extends TdFunction {
  /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
  GetMarkdownText({this.text});

  /// [text] The text
  FormattedText text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMarkdownText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMarkdownText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
