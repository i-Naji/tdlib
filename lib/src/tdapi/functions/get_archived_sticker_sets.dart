part of '../tdapi.dart';

class GetArchivedStickerSets extends TdFunction {
  bool isMasks;
  String offsetStickerSetId;
  int limit;
  dynamic extra;

  /// Returns a list of archived sticker sets. 
  /// [isMasks] Pass true to return mask stickers sets; pass false to return ordinary sticker sets . 
  /// [offsetStickerSetId] Identifier of the sticker set from which to return the result . 
  /// [limit] The maximum number of sticker sets to return
  GetArchivedStickerSets({this.isMasks,
    this.offsetStickerSetId,
    this.limit});

  /// Parse from a json
  GetArchivedStickerSets.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "offset_sticker_set_id": this.offsetStickerSetId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getArchivedStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}