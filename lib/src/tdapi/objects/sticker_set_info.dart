part of '../tdapi.dart';

class StickerSetInfo extends TdObject {
  /// Represents short information about a sticker set
  const StickerSetInfo({
    required this.id,
    required this.title,
    required this.name,
    this.thumbnail,
    required this.thumbnailOutline,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.stickerFormat,
    required this.stickerType,
    required this.isViewed,
    required this.size,
    required this.covers,
  });

  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null
  final Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current user
  final bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  final bool isOfficial;

  /// [stickerFormat] Format of the stickers in the set
  final StickerFormat stickerFormat;

  /// [stickerType] Type of the stickers in the set
  final StickerType stickerType;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [size] Total number of stickers in the set
  final int size;

  /// [covers] Up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full sticker set needs to be requested
  final List<Sticker> covers;

  /// Parse from a json
  factory StickerSetInfo.fromJson(Map<String, dynamic> json) => StickerSetInfo(
        id: int.parse(json['id']),
        title: json['title'],
        name: json['name'],
        thumbnail: json['thumbnail'] == null
            ? null
            : Thumbnail.fromJson(json['thumbnail']),
        thumbnailOutline: List<ClosedVectorPath>.from(
            (json['thumbnail_outline'] ?? [])
                .map((item) => ClosedVectorPath.fromJson(item))
                .toList()),
        isInstalled: json['is_installed'],
        isArchived: json['is_archived'],
        isOfficial: json['is_official'],
        stickerFormat: StickerFormat.fromJson(json['sticker_format']),
        stickerType: StickerType.fromJson(json['sticker_type']),
        isViewed: json['is_viewed'],
        size: json['size'],
        covers: List<Sticker>.from((json['covers'] ?? [])
            .map((item) => Sticker.fromJson(item))
            .toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "thumbnail_outline": thumbnailOutline.map((i) => i.toJson()).toList(),
      "is_installed": isInstalled,
      "is_archived": isArchived,
      "is_official": isOfficial,
      "sticker_format": stickerFormat.toJson(),
      "sticker_type": stickerType.toJson(),
      "is_viewed": isViewed,
      "size": size,
      "covers": covers.map((i) => i.toJson()).toList(),
    };
  }

  StickerSetInfo copyWith({
    int? id,
    String? title,
    String? name,
    Thumbnail? thumbnail,
    List<ClosedVectorPath>? thumbnailOutline,
    bool? isInstalled,
    bool? isArchived,
    bool? isOfficial,
    StickerFormat? stickerFormat,
    StickerType? stickerType,
    bool? isViewed,
    int? size,
    List<Sticker>? covers,
  }) =>
      StickerSetInfo(
        id: id ?? this.id,
        title: title ?? this.title,
        name: name ?? this.name,
        thumbnail: thumbnail ?? this.thumbnail,
        thumbnailOutline: thumbnailOutline ?? this.thumbnailOutline,
        isInstalled: isInstalled ?? this.isInstalled,
        isArchived: isArchived ?? this.isArchived,
        isOfficial: isOfficial ?? this.isOfficial,
        stickerFormat: stickerFormat ?? this.stickerFormat,
        stickerType: stickerType ?? this.stickerType,
        isViewed: isViewed ?? this.isViewed,
        size: size ?? this.size,
        covers: covers ?? this.covers,
      );

  static const CONSTRUCTOR = 'stickerSetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
