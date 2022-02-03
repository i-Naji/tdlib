part of '../tdapi.dart';

class SetStickerSetThumbnail extends TdFunction {

  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
  });
  
  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [thumbnail] Thumbnail to set in PNG or TGS format; pass null to remove the sticker set thumbnail. Animated thumbnail must be set for animated sticker sets and only for them
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
  }) => SetStickerSetThumbnail(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const CONSTRUCTOR = 'setStickerSetThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
