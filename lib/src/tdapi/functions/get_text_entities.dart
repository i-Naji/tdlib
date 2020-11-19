part of '../tdapi.dart';

class GetTextEntities extends TdFunction {
  /// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
  GetTextEntities({this.text});

  /// [text] The text in which to look for entites
  String text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetTextEntities.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTextEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
}
