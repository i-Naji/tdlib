part of '../tdapi.dart';

class SetStickerSetThumbnail extends TdFunction {
  /// Sets a sticker set thumbnail; for bots only
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
  });

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [thumbnail] Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set
  final InputFile? thumbnail;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "@extra": extra,
    };
  }

  SetStickerSetThumbnail copyWith({
    int? userId,
    String? name,
    InputFile? thumbnail,
  }) =>
      SetStickerSetThumbnail(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  static const CONSTRUCTOR = 'setStickerSetThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
