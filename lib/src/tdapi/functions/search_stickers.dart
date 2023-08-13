part of '../tdapi.dart';

class SearchStickers extends TdFunction {
  /// Searches for stickers from public sticker sets that correspond to any of the given emoji
  const SearchStickers({
    required this.stickerType,
    required this.emojis,
    required this.limit,
  });

  /// [stickerType] Type of the stickers to return
  final StickerType stickerType;

  /// [emojis] Space-separated list of emoji to search for; must be non-empty
  final String emojis;

  /// [limit] The maximum number of stickers to be returned; 0-100
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "emojis": emojis,
      "limit": limit,
      "@extra": extra,
    };
  }

  SearchStickers copyWith({
    StickerType? stickerType,
    String? emojis,
    int? limit,
  }) =>
      SearchStickers(
        stickerType: stickerType ?? this.stickerType,
        emojis: emojis ?? this.emojis,
        limit: limit ?? this.limit,
      );

  static const CONSTRUCTOR = 'searchStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
