part of '../tdapi.dart';

class GetWebAppUrl extends TdFunction {
  /// Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp or inlineQueryResultsButtonTypeWebApp button is pressed
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    this.theme,
    required this.applicationName,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [url] The URL from the keyboardButtonTypeWebApp or inlineQueryResultsButtonTypeWebApp button
  final String url;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the application; 0-64 English letters, digits, and underscores
  final String applicationName;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "url": url,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "@extra": extra,
    };
  }

  GetWebAppUrl copyWith({
    int? botUserId,
    String? url,
    ThemeParameters? theme,
    String? applicationName,
  }) =>
      GetWebAppUrl(
        botUserId: botUserId ?? this.botUserId,
        url: url ?? this.url,
        theme: theme ?? this.theme,
        applicationName: applicationName ?? this.applicationName,
      );

  static const CONSTRUCTOR = 'getWebAppUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
