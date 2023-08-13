part of '../tdapi.dart';

class SetCustomEmojiStickerSetThumbnail extends TdFunction {
  /// Sets a custom emoji sticker set thumbnail; for bots only
  const SetCustomEmojiStickerSetThumbnail({
    required this.name,
    required this.customEmojiId,
  });

  /// [name] Sticker set name
  final String name;

  /// [customEmojiId] Identifier of the custom emoji from the sticker set, which will be set as sticker set thumbnail; pass 0 to remove the sticker set thumbnail
  final int customEmojiId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "custom_emoji_id": customEmojiId,
      "@extra": extra,
    };
  }

  SetCustomEmojiStickerSetThumbnail copyWith({
    String? name,
    int? customEmojiId,
  }) =>
      SetCustomEmojiStickerSetThumbnail(
        name: name ?? this.name,
        customEmojiId: customEmojiId ?? this.customEmojiId,
      );

  static const CONSTRUCTOR = 'setCustomEmojiStickerSetThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
