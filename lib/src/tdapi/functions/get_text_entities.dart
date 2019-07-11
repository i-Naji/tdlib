part of '../tdapi.dart';

class GetTextEntities extends TLFunction {
  String text;
  dynamic extra;

  /// Returns all entities (mentions, hashtags, cashtags, bot commands, URLs, and email addresses) contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[text] The text in which to look for entites
  GetTextEntities({this.text});

  /// Parse from a json
  GetTextEntities.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "text": this.text, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getTextEntities";

  @override
  String getConstructor() => CONSTRUCTOR;
}
