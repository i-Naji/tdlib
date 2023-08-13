part of '../tdapi.dart';

class CreateNewStickerSet extends TdFunction {
  /// Creates a new sticker set. Returns the newly created sticker set
  const CreateNewStickerSet({
    required this.userId,
    required this.title,
    required this.name,
    required this.stickerFormat,
    required this.stickerType,
    required this.needsRepainting,
    required this.stickers,
    required this.source,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [title] Sticker set title; 1-64 characters
  final String title;

  /// [name] Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_
  final String name;

  /// [stickerFormat] Format of the stickers in the set
  final StickerFormat stickerFormat;

  /// [stickerType] Type of the stickers in the set
  final StickerType stickerType;

  /// [needsRepainting] Pass true if stickers in the sticker set must be repainted; for custom emoji sticker sets only
  final bool needsRepainting;

  /// [stickers] List of stickers to be added to the set; must be non-empty. All stickers must have the same format. For TGS stickers, uploadStickerFile must be used before the sticker is shown
  final List<InputSticker> stickers;

  /// [source] Source of the sticker set; may be empty if unknown
  final String source;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "title": title,
      "name": name,
      "sticker_format": stickerFormat.toJson(),
      "sticker_type": stickerType.toJson(),
      "needs_repainting": needsRepainting,
      "stickers": stickers.map((i) => i.toJson()).toList(),
      "source": source,
      "@extra": extra,
    };
  }

  CreateNewStickerSet copyWith({
    int? userId,
    String? title,
    String? name,
    StickerFormat? stickerFormat,
    StickerType? stickerType,
    bool? needsRepainting,
    List<InputSticker>? stickers,
    String? source,
  }) =>
      CreateNewStickerSet(
        userId: userId ?? this.userId,
        title: title ?? this.title,
        name: name ?? this.name,
        stickerFormat: stickerFormat ?? this.stickerFormat,
        stickerType: stickerType ?? this.stickerType,
        needsRepainting: needsRepainting ?? this.needsRepainting,
        stickers: stickers ?? this.stickers,
        source: source ?? this.source,
      );

  static const CONSTRUCTOR = 'createNewStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
