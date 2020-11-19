part of '../tdapi.dart';

class SetStickerSetThumbnail extends TdFunction {
  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set
  SetStickerSetThumbnail({this.userId, this.name, this.thumbnail});

  /// [userId] Sticker set owner
  int userId;

  /// [name] Sticker set name
  String name;

  /// [thumbnail] Thumbnail to set in PNG or TGS format. Animated thumbnail must be set for animated sticker sets and only for them. Pass a zero InputFileId to delete the thumbnail
  InputFile thumbnail;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetStickerSetThumbnail.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "name": this.name,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setStickerSetThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
