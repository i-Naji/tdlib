part of '../tdapi.dart';

class KeyboardButton extends TdObject {

  /// Represents a single button in a bot keyboard
  const KeyboardButton({
    required this.text,
    required this.type,
  });
  
  /// [text] Text of the button 
  final String text;

  /// [type] Type of the button
  final KeyboardButtonType type;
  
  /// Parse from a json
  factory KeyboardButton.fromJson(Map<String, dynamic> json) => KeyboardButton(
    text: json['text'],
    type: KeyboardButtonType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "type": type.toJson(),
    };
  }
  
  KeyboardButton copyWith({
    String? text,
    KeyboardButtonType? type,
  }) => KeyboardButton(
    text: text ?? this.text,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'keyboardButton';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
