part of '../tdapi.dart';

class InlineKeyboardButton implements TLObject {
  String text;
  var type;

  /// Represents a single button in an inline keyboard.
  ///[text] Text of the button .
  /// [type] Type of the button
  InlineKeyboardButton({this.text, this.type});

  /// Parse from a json
  InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.type =
        InlineKeyboardButtonType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "type": this.type.toJson()
    };
  }

  static const String CONSTRUCTOR = "inlineKeyboardButton";

  @override
  String getConstructor() => CONSTRUCTOR;
}
