part of '../tdapi.dart';

class GetMarkdownText extends TdFunction {
  FormattedText text;
  dynamic extra;

  /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [text] The text
  GetMarkdownText({this.text});

  /// Parse from a json
  GetMarkdownText.fromJson(Map<String, dynamic> json) ;

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