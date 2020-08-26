part of '../tdapi.dart';

class ParseMarkdown extends TdFunction {
  FormattedText text;
  dynamic extra;

  /// Parses Markdown entities in a human-friendly format, ignoring mark up errors. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [text] The text to parse. For example, "__italic__
  ParseMarkdown({this.text});

  /// Parse from a json
  ParseMarkdown.fromJson(Map<String, dynamic> json) ;

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