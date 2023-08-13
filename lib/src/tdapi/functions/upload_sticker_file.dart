part of '../tdapi.dart';

class UploadStickerFile extends TdFunction {
  /// Uploads a file with a sticker; returns the uploaded file
  const UploadStickerFile({
    required this.userId,
    required this.stickerFormat,
    required this.sticker,
  });

  /// [userId] Sticker file owner; ignored for regular users
  final int userId;

  /// [stickerFormat] Sticker format
  final StickerFormat stickerFormat;

  /// [sticker] File file to upload; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  final InputFile sticker;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "sticker_format": stickerFormat.toJson(),
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }

  UploadStickerFile copyWith({
    int? userId,
    StickerFormat? stickerFormat,
    InputFile? sticker,
  }) =>
      UploadStickerFile(
        userId: userId ?? this.userId,
        stickerFormat: stickerFormat ?? this.stickerFormat,
        sticker: sticker ?? this.sticker,
      );

  static const CONSTRUCTOR = 'uploadStickerFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
