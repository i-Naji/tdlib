part of '../tdapi.dart';

class CreateNewStickerSet extends TdFunction {
  int userId;
  String title;
  String name;
  bool isMasks;
  List<List<InputSticker>> stickers;
  dynamic extra;

  /// Creates a new sticker set; for bots only. Returns the newly created sticker set. 
  /// [userId] Sticker set owner. 
  /// [title] Sticker set title; 1-64 characters. 
  /// [name] Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_. 
  /// [isMasks] True, if stickers are masks. Animated stickers can't be masks. 
  /// [stickers] List of stickers to be added to the set; must be non-empty. All stickers must be of the same type
  CreateNewStickerSet({this.userId,
    this.title,
    this.name,
    this.isMasks,
    this.stickers});

  /// Parse from a json
  CreateNewStickerSet.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "title": this.title,
      "name": this.name,
      "is_masks": this.isMasks,
      "stickers": this.stickers.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewStickerSet';
}