part of '../tdapi.dart';

class SetBotInfoShortDescription extends TdFunction {
  /// Sets the text shown on a bot's profile page and sent together with the link when users share the bot. Can be called only if userTypeBot.can_be_edited == true
  const SetBotInfoShortDescription({
    required this.botUserId,
    required this.languageCode,
    required this.shortDescription,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the short description will be shown to all users for whose languages there is no dedicated description
  final String languageCode;

  /// [shortDescription] New bot's short description on the specified language
  final String shortDescription;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "short_description": shortDescription,
      "@extra": extra,
    };
  }

  SetBotInfoShortDescription copyWith({
    int? botUserId,
    String? languageCode,
    String? shortDescription,
  }) =>
      SetBotInfoShortDescription(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
        shortDescription: shortDescription ?? this.shortDescription,
      );

  static const CONSTRUCTOR = 'setBotInfoShortDescription';

  @override
  String getConstructor() => CONSTRUCTOR;
}
