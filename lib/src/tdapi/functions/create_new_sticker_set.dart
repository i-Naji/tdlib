part of '../tdapi.dart';

class CreateNewStickerSet extends TdFunction {
  /// Creates a new sticker set; for bots only. Returns the newly created sticker set
  CreateNewStickerSet(
      {this.userId, this.title, this.name, this.isMasks, this.stickers});

  /// [userId] Sticker set owner
  int userId;

  /// [title] Sticker set title; 1-64 characters
  String title;

  /// [name] Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_
  String name;

  /// [isMasks] True, if stickers are masks. Animated stickers can't be masks
  bool isMasks;

  /// [stickers] List of stickers to be added to the set; must be non-empty. All stickers must be of the same type
  List<InputSticker> stickers;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateNewStickerSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "title": this.title,
      "name": this.name,
      "is_masks": this.isMasks,
      "stickers": this.stickers.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
