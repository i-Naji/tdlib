part of '../tdapi.dart';

class GetAttachedStickerSets extends TdFunction {
  /// Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets
  GetAttachedStickerSets({this.fileId});

  /// [fileId] File identifier
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetAttachedStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAttachedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
