part of '../tdapi.dart';

class SetBotProfilePhoto extends TdFunction {
  /// Changes a profile photo for a bot
  const SetBotProfilePhoto({
    required this.botUserId,
    this.photo,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [photo] Profile photo to set; pass null to delete the chat photo
  final InputChatPhoto? photo;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "photo": photo?.toJson(),
      "@extra": extra,
    };
  }

  SetBotProfilePhoto copyWith({
    int? botUserId,
    InputChatPhoto? photo,
  }) =>
      SetBotProfilePhoto(
        botUserId: botUserId ?? this.botUserId,
        photo: photo ?? this.photo,
      );

  static const CONSTRUCTOR = 'setBotProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
