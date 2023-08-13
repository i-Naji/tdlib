part of '../tdapi.dart';

class GetDefaultProfilePhotoCustomEmojiStickers extends TdFunction {
  /// Returns default list of custom emoji stickers for placing on a profile photo
  const GetDefaultProfilePhotoCustomEmojiStickers();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetDefaultProfilePhotoCustomEmojiStickers copyWith() =>
      const GetDefaultProfilePhotoCustomEmojiStickers();

  static const CONSTRUCTOR = 'getDefaultProfilePhotoCustomEmojiStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
