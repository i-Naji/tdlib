part of '../tdapi.dart';

class PaymentFormTheme extends TdObject {

  /// Theme colors for a payment form
  const PaymentFormTheme({
    required this.backgroundColor,
    required this.textColor,
    required this.hintColor,
    required this.linkColor,
    required this.buttonColor,
    required this.buttonTextColor,
  });
  
  /// [backgroundColor] A color of the payment form background in the RGB24 format 
  final int backgroundColor;

  /// [textColor] A color of text in the RGB24 format
  final int textColor;

  /// [hintColor] A color of hints in the RGB24 format
  final int hintColor;

  /// [linkColor] A color of links in the RGB24 format 
  final int linkColor;

  /// [buttonColor] A color of the buttons in the RGB24 format
  final int buttonColor;

  /// [buttonTextColor] A color of text on the buttons in the RGB24 format
  final int buttonTextColor;
  
  /// Parse from a json
  factory PaymentFormTheme.fromJson(Map<String, dynamic> json) => PaymentFormTheme(
    backgroundColor: json['background_color'],
    textColor: json['text_color'],
    hintColor: json['hint_color'],
    linkColor: json['link_color'],
    buttonColor: json['button_color'],
    buttonTextColor: json['button_text_color'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background_color": backgroundColor,
      "text_color": textColor,
      "hint_color": hintColor,
      "link_color": linkColor,
      "button_color": buttonColor,
      "button_text_color": buttonTextColor,
    };
  }
  
  PaymentFormTheme copyWith({
    int? backgroundColor,
    int? textColor,
    int? hintColor,
    int? linkColor,
    int? buttonColor,
    int? buttonTextColor,
  }) => PaymentFormTheme(
    backgroundColor: backgroundColor ?? this.backgroundColor,
    textColor: textColor ?? this.textColor,
    hintColor: hintColor ?? this.hintColor,
    linkColor: linkColor ?? this.linkColor,
    buttonColor: buttonColor ?? this.buttonColor,
    buttonTextColor: buttonTextColor ?? this.buttonTextColor,
  );

  static const CONSTRUCTOR = 'paymentFormTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
