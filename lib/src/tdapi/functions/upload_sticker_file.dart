part of '../tdapi.dart';

class UploadStickerFile extends TdFunction {

  /// Uploads a file with a sticker; returns the uploaded file
  const UploadStickerFile({
    required this.userId,
    required this.sticker,
  });
  
  /// [userId] Sticker file owner; ignored for regular users 
  final int userId;

  /// [sticker] Sticker file to upload
  final InputSticker sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  UploadStickerFile copyWith({
    int? userId,
    InputSticker? sticker,
  }) => UploadStickerFile(
    userId: userId ?? this.userId,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'uploadStickerFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
