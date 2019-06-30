part of '../tdapi.dart';

class StickerSetInfo implements TLObject {
  int id;
  String title;
  String name;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isMasks;
  bool isViewed;
  int size;
  List<Sticker> covers;

  /// Represents short information about a sticker set.
  ///[id] Identifier of the sticker set .
  /// [title] Title of the sticker set .
  /// [name] Name of the sticker set .
  /// [isInstalled] True, if the sticker set has been installed by current user.
  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously .
  /// [isOfficial] True, if the sticker set is official .
  /// [isMasks] True, if the stickers in the set are masks.
  /// [isViewed] True for already viewed trending sticker sets .
  /// [size] Total number of stickers in the set .
  /// [covers] Contains up to the first 5 stickers from the set, depending on the context. If the client needs more stickers the full set should be requested
  StickerSetInfo(
      {this.id,
      this.title,
      this.name,
      this.isInstalled,
      this.isArchived,
      this.isOfficial,
      this.isMasks,
      this.isViewed,
      this.size,
      this.covers});

  /// Parse from a json
  StickerSetInfo.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.name = json['name'];
    this.isInstalled = json['is_installed'];
    this.isArchived = json['is_archived'];
    this.isOfficial = json['is_official'];
    this.isMasks = json['is_masks'];
    this.isViewed = json['is_viewed'];
    this.size = json['size'];
    this.covers = (json['covers'] ?? [])
        .map((listValue) => Sticker.fromJson(listValue))
        .toList();
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
      'size': this.size,
      'covers': this.covers.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'stickerSetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
