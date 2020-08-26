part of '../tdapi.dart';

class ParseTextEntities extends TdFunction {
  String text;
  TextParseMode parseMode;
  dynamic extra;

  /// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [text] The text to parse . 
  /// [parseMode] Text parse mode
  ParseTextEntities({this.text,
    this.parseMode});

  /// Parse from a json
  ParseTextEntities.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "parse_mode": this.parseMode == null ? null : this.parseMode.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'parseTextEntities';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}