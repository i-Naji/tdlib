part of '../tdapi.dart';

class UploadStickerFile extends TdFunction {
  int userId;
  var pngSticker;
  dynamic extra;

  /// Uploads a PNG image with a sticker; for bots only; returns the uploaded file.
  ///[userId] Sticker file owner .
  /// [pngSticker] PNG image with the sticker; must be up to 512 kB in size and fit in 512x512 square
  UploadStickerFile({this.userId, this.pngSticker});

  /// Parse from a json
  UploadStickerFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "png_sticker": this.pngSticker.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "uploadStickerFile";

  @override
  String getConstructor() => CONSTRUCTOR;
}
