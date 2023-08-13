part of '../tdapi.dart';

class ThemeParameters extends TdObject {
  /// Contains parameters of the application theme
  const ThemeParameters({
    required this.backgroundColor,
    required this.secondaryBackgroundColor,
    required this.textColor,
    required this.hintColor,
    required this.linkColor,
    required this.buttonColor,
    required this.buttonTextColor,
  });

  /// [backgroundColor] A color of the background in the RGB24 format
  final int backgroundColor;

  /// [secondaryBackgroundColor] A secondary color for the background in the RGB24 format
  final int secondaryBackgroundColor;

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
  factory ThemeParameters.fromJson(Map<String, dynamic> json) =>
      ThemeParameters(
        backgroundColor: json['background_color'],
        secondaryBackgroundColor: json['secondary_background_color'],
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
      "secondary_background_color": secondaryBackgroundColor,
      "text_color": textColor,
      "hint_color": hintColor,
      "link_color": linkColor,
      "button_color": buttonColor,
      "button_text_color": buttonTextColor,
    };
  }

  ThemeParameters copyWith({
    int? backgroundColor,
    int? secondaryBackgroundColor,
    int? textColor,
    int? hintColor,
    int? linkColor,
    int? buttonColor,
    int? buttonTextColor,
  }) =>
      ThemeParameters(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        secondaryBackgroundColor:
            secondaryBackgroundColor ?? this.secondaryBackgroundColor,
        textColor: textColor ?? this.textColor,
        hintColor: hintColor ?? this.hintColor,
        linkColor: linkColor ?? this.linkColor,
        buttonColor: buttonColor ?? this.buttonColor,
        buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      );

  static const CONSTRUCTOR = 'themeParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
