part of '../tdapi.dart';

class GetDefaultChatPhotoCustomEmojiStickers extends TdFunction {
  /// Returns default list of custom emoji stickers for placing on a chat photo
  const GetDefaultChatPhotoCustomEmojiStickers();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetDefaultChatPhotoCustomEmojiStickers copyWith() =>
      const GetDefaultChatPhotoCustomEmojiStickers();

  static const CONSTRUCTOR = 'getDefaultChatPhotoCustomEmojiStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
