part of '../tdapi.dart';

class KeyboardButton extends TdObject {
  /// Represents a single button in a bot keyboard
  KeyboardButton({this.text, this.type});

  /// [text] Text of the button
  String text;

  /// [type] Type of the button
  KeyboardButtonType type;

  /// Parse from a json
  KeyboardButton.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.type =
        KeyboardButtonType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'keyboardButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
