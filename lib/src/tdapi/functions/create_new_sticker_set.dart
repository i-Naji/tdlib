part of '../tdapi.dart';

class CreateNewStickerSet extends TdFunction {

  /// Creates a new sticker set. Returns the newly created sticker set
  const CreateNewStickerSet({
    required this.userId,
    required this.title,
    required this.name,
    required this.isMasks,
    required this.stickers,
    required this.source,
  });
  
  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [title] Sticker set title; 1-64 characters
  final String title;

  /// [name] Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_
  final String name;

  /// [isMasks] True, if stickers are masks. Animated stickers can't be masks
  final bool isMasks;

  /// [stickers] List of stickers to be added to the set; must be non-empty. All stickers must be of the same type. For animated stickers, uploadStickerFile must be used before the sticker is shown
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
      "is_masks": isMasks,
      "stickers": stickers.map((i) => i.toJson()).toList(),
      "source": source,
      "@extra": extra,
    };
  }
  
  CreateNewStickerSet copyWith({
    int? userId,
    String? title,
    String? name,
    bool? isMasks,
    List<InputSticker>? stickers,
    String? source,
  }) => CreateNewStickerSet(
    userId: userId ?? this.userId,
    title: title ?? this.title,
    name: name ?? this.name,
    isMasks: isMasks ?? this.isMasks,
    stickers: stickers ?? this.stickers,
    source: source ?? this.source,
  );

  static const CONSTRUCTOR = 'createNewStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
