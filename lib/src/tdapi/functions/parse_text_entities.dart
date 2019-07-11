part of '../tdapi.dart';

class ParseTextEntities extends TLFunction {
  String text;
  var parseMode;
  dynamic extra;

  /// Parses Bold, Italic, Code, Pre, PreCode and TextUrl entities contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[text] The text which should be parsed .
  /// [parseMode] Text parse mode
  ParseTextEntities({this.text, this.parseMode});

  /// Parse from a json
  ParseTextEntities.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "parse_mode": this.parseMode.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "parseTextEntities";

  @override
  String getConstructor() => CONSTRUCTOR;
}
