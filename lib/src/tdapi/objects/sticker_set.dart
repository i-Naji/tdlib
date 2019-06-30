part of '../tdapi.dart';

class StickerSet implements TLObject {
  int id;
  String title;
  String name;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isMasks;
  bool isViewed;
  List<Sticker> stickers;
  List<StickerEmojis> emojis;
  dynamic extra;

  /// Represents a sticker set.
  ///[id] Identifier of the sticker set .
  /// [title] Title of the sticker set .
  /// [name] Name of the sticker set .
  /// [isInstalled] True, if the sticker set has been installed by the current user.
  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously .
  /// [isOfficial] True, if the sticker set is official .
  /// [isMasks] True, if the stickers in the set are masks.
  /// [isViewed] True for already viewed trending sticker sets .
  /// [stickers] List of stickers in this set .
  /// [emojis] A list of emoji corresponding to the stickers in the same order
  StickerSet(
      {this.id,
      this.title,
      this.name,
      this.isInstalled,
      this.isArchived,
      this.isOfficial,
      this.isMasks,
      this.isViewed,
      this.stickers,
      this.emojis});

  /// Parse from a json
  StickerSet.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.name = json['name'];
    this.isInstalled = json['is_installed'];
    this.isArchived = json['is_archived'];
    this.isOfficial = json['is_official'];
    this.isMasks = json['is_masks'];
    this.isViewed = json['is_viewed'];
    this.stickers = (json['stickers'] ?? [])
        .map((listValue) => Sticker.fromJson(listValue))
        .toList();
    this.emojis = (json['emojis'] ?? [])
        .map((listValue) => StickerEmojis.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'title': this.title,
      'name': this.name,
      'is_installed': this.isInstalled,
      'is_archived': this.isArchived,
      'is_official': this.isOfficial,
      'is_masks': this.isMasks,
      'is_viewed': this.isViewed,
      'stickers': this.stickers.map((listItem) => listItem.toJson()).toList(),
      'emojis': this.emojis.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'stickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
