part of '../tdapi.dart';

class SearchWebApp extends TdFunction {
  /// Returns information about a Web App by its short name. Returns a 404 error if the Web App is not found
  const SearchWebApp({
    required this.botUserId,
    required this.webAppShortName,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "web_app_short_name": webAppShortName,
      "@extra": extra,
    };
  }

  SearchWebApp copyWith({
    int? botUserId,
    String? webAppShortName,
  }) =>
      SearchWebApp(
        botUserId: botUserId ?? this.botUserId,
        webAppShortName: webAppShortName ?? this.webAppShortName,
      );

  static const CONSTRUCTOR = 'searchWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
