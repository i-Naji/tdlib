part of '../tdapi.dart';

class Text extends TdObject {
  String text;
  dynamic extra;

  /// Contains some text. 
  /// [text] Text
  Text({this.text});

  /// Parse from a json
  Text.fromJson(Map<String, dynamic> json)  {
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