part of '../tdapi.dart';

class SetStickerSetThumbnail extends TdFunction {
  int userId;
  String name;
  InputFile thumbnail;
  dynamic extra;

  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set. 
  /// [userId] Sticker set owner. 
  /// [name] Sticker set name. 
  /// [thumbnail] Thumbnail to set in PNG or TGS format. Animated thumbnail must be set for animated sticker sets and only for them. You can use a zero InputFileId to delete the thumbnail
  SetStickerSetThumbnail({this.userId,
    this.name,
    this.thumbnail});

  /// Parse from a json
  SetStickerSetThumbnail.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "name": this.name,
      "thumbnail": this.thumbnail.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setStickerSetThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}