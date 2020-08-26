part of '../tdapi.dart';

class GetStickerSet extends TdFunction {
  String setId;
  dynamic extra;

  /// Returns information about a sticker set by its identifier. 
  /// [setId] Identifier of the sticker set
  GetStickerSet({this.setId});

  /// Parse from a json
  GetStickerSet.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}