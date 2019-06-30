part of '../tdapi.dart';

class KeyboardButton implements TLObject {
  String text;
  var type;

  /// Represents a single button in a bot keyboard.
  ///[text] Text of the button .
  /// [type] Type of the button
  KeyboardButton({this.text, this.type});

  /// Parse from a json
  KeyboardButton.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.type =
        KeyboardButtonType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text,
      'type': this.type.toJson()
    };
  }

  static const String CONSTRUCTOR = 'keyboardButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
