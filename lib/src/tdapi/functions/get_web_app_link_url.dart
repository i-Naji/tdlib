part of '../tdapi.dart';

class GetWebAppLinkUrl extends TdFunction {
  /// Returns an HTTPS URL of a Web App to open after a link of the type internalLinkTypeWebApp is clicked
  const GetWebAppLinkUrl({
    required this.chatId,
    required this.botUserId,
    required this.webAppShortName,
    required this.startParameter,
    this.theme,
    required this.applicationName,
    required this.allowWriteAccess,
  });

  /// [chatId] Identifier of the chat in which the link was clicked; pass 0 if none
  final int chatId;

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter from internalLinkTypeWebApp
  final String startParameter;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the application; 0-64 English letters, digits, and underscores
  final String applicationName;

  /// [allowWriteAccess] Pass true if the current user allowed the bot to send them messages
  final bool allowWriteAccess;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "web_app_short_name": webAppShortName,
      "start_parameter": startParameter,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "allow_write_access": allowWriteAccess,
      "@extra": extra,
    };
  }

  GetWebAppLinkUrl copyWith({
    int? chatId,
    int? botUserId,
    String? webAppShortName,
    String? startParameter,
    ThemeParameters? theme,
    String? applicationName,
    bool? allowWriteAccess,
  }) =>
      GetWebAppLinkUrl(
        chatId: chatId ?? this.chatId,
        botUserId: botUserId ?? this.botUserId,
        webAppShortName: webAppShortName ?? this.webAppShortName,
        startParameter: startParameter ?? this.startParameter,
        theme: theme ?? this.theme,
        applicationName: applicationName ?? this.applicationName,
        allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
      );

  static const CONSTRUCTOR = 'getWebAppLinkUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
