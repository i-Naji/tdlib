part of '../tdapi.dart';

class InlineKeyboardButton extends TdObject {
  String text;
  InlineKeyboardButtonType type;

  /// Represents a single button in an inline keyboard. 
  /// [text] Text of the button . 
  /// [type] Type of the button
  InlineKeyboardButton({this.text,
    this.type});

  /// Parse from a json
  InlineKeyboardButton.fromJson(Map<String, dynamic> json)  {
    this.text = json['text'];
    this.type = InlineKeyboardButtonType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButton';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}