part of '../tdapi.dart';

class AddStickerToSet extends TdFunction {
  int userId;
  String name;
  InputSticker sticker;
  dynamic extra;

  /// Adds a new sticker to a set; for bots only. Returns the sticker set. 
  /// [userId] Sticker set owner. 
  /// [name] Sticker set name . 
  /// [sticker] Sticker to add to the set
  AddStickerToSet({this.userId,
    this.name,
    this.sticker});

  /// Parse from a json
  AddStickerToSet.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "name": this.name,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addStickerToSet';
}