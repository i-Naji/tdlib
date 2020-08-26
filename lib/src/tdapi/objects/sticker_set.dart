part of '../tdapi.dart';

class StickerSet extends TdObject {
  String id;
  String title;
  String name;
  Thumbnail thumbnail;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  List<Sticker> stickers;
  List<Emojis> emojis;
  dynamic extra;

  /// Represents a sticker set. 
  /// [id] Identifier of the sticker set. 
  /// [title] Title of the sticker set . 
  /// [name] Name of the sticker set . 
  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed. 
  /// [isInstalled] True, if the sticker set has been installed by the current user. 
  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. 
  /// [isOfficial] True, if the sticker set is official. 
  /// [isAnimated] True, is the stickers in the set are animated . 
  /// [isMasks] True, if the stickers in the set are masks . 
  /// [isViewed] True for already viewed trending sticker sets. 
  /// [stickers] List of stickers in this set. 
  /// [emojis] A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  StickerSet({this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.stickers,
    this.emojis});

  /// Parse from a json
  StickerSet.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.name = json['name'];
    this.thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.isInstalled = json['is_installed'];
    this.isArchived = json['is_archived'];
    this.isOfficial = json['is_official'];
    this.isAnimated = json['is_animated'];
    this.isMasks = json['is_masks'];
    this.isViewed = json['is_viewed'];
    this.stickers = List<Sticker>.from((json['stickers'] ?? []).map((item) => Sticker.fromJson(item ?? <String, dynamic>{})).toList());
    this.emojis = List<Emojis>.from((json['emojis'] ?? []).map((item) => Emojis.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "name": this.name,
      "thumbnail": this.thumbnail.toJson(),
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