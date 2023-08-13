part of '../tdapi.dart';

class SetBotInfoDescription extends TdFunction {
  /// Sets the text shown in the chat with a bot if the chat is empty. Can be called only if userTypeBot.can_be_edited == true
  const SetBotInfoDescription({
    required this.botUserId,
    required this.languageCode,
    required this.description,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the description will be shown to all users for whose languages there is no dedicated description
  final String languageCode;

  /// [description] New bot's description on the specified language
  final String description;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "description": description,
      "@extra": extra,
    };
  }

  SetBotInfoDescription copyWith({
    int? botUserId,
    String? languageCode,
    String? description,
  }) =>
      SetBotInfoDescription(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
        description: description ?? this.description,
      );

  static const CONSTRUCTOR = 'setBotInfoDescription';

  @override
  String getConstructor() => CONSTRUCTOR;
}
