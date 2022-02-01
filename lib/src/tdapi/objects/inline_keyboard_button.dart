part of '../tdapi.dart';

class InlineKeyboardButton extends TdObject {

  /// Represents a single button in an inline keyboard
  const InlineKeyboardButton({
    required this.text,
    required this.type,
  });
  
  /// [text] Text of the button 
  final String text;

  /// [type] Type of the button
  final InlineKeyboardButtonType type;
  
  /// Parse from a json
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) => InlineKeyboardButton(
    text: json['text'],
    type: InlineKeyboardButtonType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "type": type.toJson(),
    };
  }
  
  InlineKeyboardButton copyWith({
    String? text,
    InlineKeyboardButtonType? type,
  }) => InlineKeyboardButton(
    text: text ?? this.text,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'inlineKeyboardButton';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
