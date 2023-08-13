part of '../tdapi.dart';

class GetBotInfoDescription extends TdFunction {
  /// Returns the text shown in the chat with a bot if the chat is empty in the given language. Can be called only if userTypeBot.can_be_edited == true
  const GetBotInfoDescription({
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

  GetBotInfoDescription copyWith({
    int? botUserId,
    String? languageCode,
  }) =>
      GetBotInfoDescription(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
      );

  static const CONSTRUCTOR = 'getBotInfoDescription';

  @override
  String getConstructor() => CONSTRUCTOR;
}
