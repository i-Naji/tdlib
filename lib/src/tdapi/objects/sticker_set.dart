part of '../tdapi.dart';

class StickerSet extends TdObject {
  /// Represents a sticker set
  StickerSet(
      {this.id,
      this.title,
      this.name,
      this.thumbnail,
      this.thumbnailOutline,
      this.isInstalled,
      this.isArchived,
      this.isOfficial,
      this.isAnimated,
      this.isMasks,
      this.isViewed,
      this.stickers,
      this.emojis});

  /// [id] Identifier of the sticker set
  int id;

  /// [title] Title of the sticker set
  String title;

  /// [name] Name of the sticker set
  String name;

  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
  Thumbnail thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  List<ClosedVectorPath> thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current user
  bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  bool isOfficial;

  /// [isAnimated] True, is the stickers in the set are animated
  bool isAnimated;

  /// [isMasks] True, if the stickers in the set are masks
  bool isMasks;

  /// [isViewed] True for already viewed trending sticker sets
  bool isViewed;

  /// [stickers] List of stickers in this set
  List<Sticker> stickers;

  /// [emojis] A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  List<Emojis> emojis;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StickerSet.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
    this.title = json['title'];
    this.name = json['name'];
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.thumbnailOutline = List<ClosedVectorPath>.from(
        (json['thumbnail_outline'] ?? [])
            .map((item) =>
                ClosedVectorPath.fromJson(item ?? <String, dynamic>{}))
            .toList());
    this.isInstalled = json['is_installed'];
    this.isArchived = json['is_archived'];
    this.isOfficial = json['is_official'];
    this.isAnimated = json['is_animated'];
    this.isMasks = json['is_masks'];
    this.isViewed = json['is_viewed'];
    this.stickers = List<Sticker>.from((json['stickers'] ?? [])
        .map((item) => Sticker.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.emojis = List<Emojis>.from((json['emojis'] ?? [])
        .map((item) => Emojis.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "name": this.name,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "thumbnail_outline":
          this.thumbnailOutline.map((i) => i.toJson()).toList(),
      "is_installed": this.isInstalled,
      "is_archived": this.isArchived,
      "is_official": this.isOfficial,
      "is_animated": this.isAnimated,
      "is_masks": this.isMasks,
      "is_viewed": this.isViewed,
      "stickers": this.stickers.map((i) => i.toJson()).toList(),
      "emojis": this.emojis.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
