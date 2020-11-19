part of '../tdapi.dart';

class SetBackground extends TdFunction {
  /// Changes the background selected by the user; adds background to the list of installed backgrounds
  SetBackground({this.background, this.type, this.forDarkTheme});

  /// [background] The input background to use, null for filled backgrounds
  InputBackground background;

  /// [type] Background type; null for default background. The method will return error 404 if type is null
  BackgroundType type;

  /// [forDarkTheme] True, if the background is chosen for dark theme
  bool forDarkTheme;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetBackground.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background": this.background == null ? null : this.background.toJson(),
      "type": this.type == null ? null : this.type.toJson(),
      "for_dark_theme": this.forDarkTheme,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
