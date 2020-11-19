part of '../tdapi.dart';

class GetStickerSet extends TdFunction {
  /// Returns information about a sticker set by its identifier
  GetStickerSet({this.setId});

  /// [setId] Identifier of the sticker set
  int setId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetStickerSet.fromJson(Map<String, dynamic> json);

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
