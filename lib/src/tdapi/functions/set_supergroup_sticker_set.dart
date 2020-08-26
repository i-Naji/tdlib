part of '../tdapi.dart';

class SetSupergroupStickerSet extends TdFunction {
  int supergroupId;
  String stickerSetId;
  dynamic extra;

  /// Changes the sticker set of a supergroup; requires can_change_info rights. 
  /// [supergroupId] Identifier of the supergroup . 
  /// [stickerSetId] New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
  SetSupergroupStickerSet({this.supergroupId,
    this.stickerSetId});

  /// Parse from a json
  SetSupergroupStickerSet.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "sticker_set_id": this.stickerSetId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setSupergroupStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}