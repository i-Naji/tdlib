part of '../tdapi.dart';

class SetEmojiStatus extends TdFunction {
  /// Changes the emoji status of the current user; for Telegram Premium users only
  const SetEmojiStatus({
    this.emojiStatus,
  });

  /// [emojiStatus] New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji_status": emojiStatus?.toJson(),
      "@extra": extra,
    };
  }

  SetEmojiStatus copyWith({
    EmojiStatus? emojiStatus,
  }) =>
      SetEmojiStatus(
        emojiStatus: emojiStatus ?? this.emojiStatus,
      );

  static const CONSTRUCTOR = 'setEmojiStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
