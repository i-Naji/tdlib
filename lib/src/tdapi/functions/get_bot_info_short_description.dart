part of '../tdapi.dart';

class GetBotInfoShortDescription extends TdFunction {
  /// Returns the text shown on a bot's profile page and sent together with the link when users share the bot in the given language. Can be called only if userTypeBot.can_be_edited == true
  const GetBotInfoShortDescription({
    required this.botUserId,
    required this.languageCode,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code or an empty string
  final String languageCode;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "@extra": extra,
    };
  }

  GetBotInfoShortDescription copyWith({
    int? botUserId,
    String? languageCode,
  }) =>
      GetBotInfoShortDescription(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
      );

  static const CONSTRUCTOR = 'getBotInfoShortDescription';

  @override
  String getConstructor() => CONSTRUCTOR;
}
