part of '../tdapi.dart';

class GetAttachedStickerSets extends TdFunction {

  /// Returns a list of sticker sets attached to a file. Currently, only photos and videos can have attached sticker sets
  const GetAttachedStickerSets({
    required this.fileId,
  });
  
  /// [fileId] File identifier
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "@extra": extra,
    };
  }
  
  GetAttachedStickerSets copyWith({
    int? fileId,
  }) => GetAttachedStickerSets(
    fileId: fileId ?? this.fileId,
  );

  static const CONSTRUCTOR = 'getAttachedStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
