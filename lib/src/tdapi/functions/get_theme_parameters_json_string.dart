part of '../tdapi.dart';

class GetThemeParametersJsonString extends TdFunction {
  /// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously
  const GetThemeParametersJsonString({
    required this.theme,
  });

  /// [theme] Theme parameters to convert to JSON
  final ThemeParameters theme;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme": theme.toJson(),
      "@extra": extra,
    };
  }

  GetThemeParametersJsonString copyWith({
    ThemeParameters? theme,
  }) =>
      GetThemeParametersJsonString(
        theme: theme ?? this.theme,
      );

  static const CONSTRUCTOR = 'getThemeParametersJsonString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
