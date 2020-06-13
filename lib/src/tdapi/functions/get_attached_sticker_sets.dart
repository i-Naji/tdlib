part of '../tdapi.dart';

class GetAttachedStickerSets extends TdFunction {
  int fileId;
  dynamic extra;

  /// Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets. 
  /// [fileId] File identifier
  GetAttachedStickerSets({this.fileId});

  /// Parse from a json
  GetAttachedStickerSets.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAttachedStickerSets';
}