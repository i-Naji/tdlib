part of '../tdapi.dart';

class InlineKeyboardButton extends TdObject {
  /// Represents a single button in an inline keyboard
  InlineKeyboardButton({this.text, this.type});

  /// [text] Text of the button
  String text;

  /// [type] Type of the button
  InlineKeyboardButtonType type;

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
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
