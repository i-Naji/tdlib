part of '../tdapi.dart';

class Text extends TdObject {
  /// Contains some text
  Text({this.text});

  /// [text] Text
  String text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Text.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }

  static const CONSTRUCTOR = 'text';

  @override
  String getConstructor() => CONSTRUCTOR;
}
