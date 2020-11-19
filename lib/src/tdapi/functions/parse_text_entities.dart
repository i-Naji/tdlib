part of '../tdapi.dart';

class ParseTextEntities extends TdFunction {
  /// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
  ParseTextEntities({this.text, this.parseMode});

  /// [text] The text to parse
  String text;

  /// [parseMode] Text parse mode
  TextParseMode parseMode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ParseTextEntities.fromJson(Map<String, dynamic> json);

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
