part of '../tdapi.dart';

class EmojiStatus extends TdObject {
  /// Describes a custom emoji to be shown instead of the Telegram Premium badge
  const EmojiStatus({
    required this.customEmojiId,
    required this.expirationDate,
  });

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  /// [expirationDate] Point in time (Unix timestamp) when the status will expire; 0 if never
  final int expirationDate;

  /// Parse from a json
  factory EmojiStatus.fromJson(Map<String, dynamic> json) => EmojiStatus(
        customEmojiId: int.parse(json['custom_emoji_id']),
        expirationDate: json['expiration_date'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_id": customEmojiId,
      "expiration_date": expirationDate,
    };
  }

  EmojiStatus copyWith({
    int? customEmojiId,
    int? expirationDate,
  }) =>
      EmojiStatus(
        customEmojiId: customEmojiId ?? this.customEmojiId,
        expirationDate: expirationDate ?? this.expirationDate,
      );

  static const CONSTRUCTOR = 'emojiStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
