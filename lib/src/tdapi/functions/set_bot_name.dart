part of '../tdapi.dart';

class SetBotName extends TdFunction {
  /// Sets the name of a bot. Can be called only if userTypeBot.can_be_edited == true
  const SetBotName({
    required this.botUserId,
    required this.languageCode,
    required this.name,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [languageCode] A two-letter ISO 639-1 language code. If empty, the name will be shown to all users for whose languages there is no dedicated name
  final String languageCode;

  /// [name] New bot's name on the specified language; 0-64 characters; must be non-empty if language code is empty
  final String name;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "name": name,
      "@extra": extra,
    };
  }

  SetBotName copyWith({
    int? botUserId,
    String? languageCode,
    String? name,
  }) =>
      SetBotName(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
        name: name ?? this.name,
      );

  static const CONSTRUCTOR = 'setBotName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
