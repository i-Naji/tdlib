part of '../tdapi.dart';

class GetBotName extends TdFunction {
  /// Returns the name of a bot in the given language. Can be called only if userTypeBot.can_be_edited == true
  const GetBotName({
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

  GetBotName copyWith({
    int? botUserId,
    String? languageCode,
  }) =>
      GetBotName(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
      );

  static const CONSTRUCTOR = 'getBotName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
