part of '../tdapi.dart';

class GetBackgrounds extends TdFunction {
  bool forDarkTheme;
  dynamic extra;

  /// Returns backgrounds installed by the user.
  ///[forDarkTheme] True, if the backgrounds needs to be ordered for dark theme
  GetBackgrounds({this.forDarkTheme});

  /// Parse from a json
  GetBackgrounds.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": this.forDarkTheme,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getBackgrounds";

  @override
  String getConstructor() => CONSTRUCTOR;
}
