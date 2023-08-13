part of '../tdapi.dart';

class GetBackgrounds extends TdFunction {
  /// Returns backgrounds installed by the user
  const GetBackgrounds({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
    };
  }

  GetBackgrounds copyWith({
    bool? forDarkTheme,
  }) =>
      GetBackgrounds(
        forDarkTheme: forDarkTheme ?? this.forDarkTheme,
      );

  static const CONSTRUCTOR = 'getBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
