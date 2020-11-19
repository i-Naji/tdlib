part of '../tdapi.dart';

class ParseMarkdown extends TdFunction {
  /// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
  ParseMarkdown({this.text});

  /// [text] The text to parse. For example, "__italic__
  FormattedText text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ParseMarkdown.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'parseMarkdown';

  @override
  String getConstructor() => CONSTRUCTOR;
}
