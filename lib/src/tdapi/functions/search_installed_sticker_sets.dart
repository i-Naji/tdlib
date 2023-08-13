part of '../tdapi.dart';

class SearchInstalledStickerSets extends TdFunction {
  /// Searches for installed sticker sets by looking for specified query in their title and name
  const SearchInstalledStickerSets({
    required this.stickerType,
    required this.query,
    required this.limit,
  });

  /// [stickerType] Type of the sticker sets to search for
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of sticker sets to return
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker_type": stickerType.toJson(),
      "query": query,
      "limit": limit,
      "@extra": extra,
    };
  }

  SearchInstalledStickerSets copyWith({
    StickerType? stickerType,
    String? query,
    int? limit,
  }) =>
      SearchInstalledStickerSets(
        stickerType: stickerType ?? this.stickerType,
        query: query ?? this.query,
        limit: limit ?? this.limit,
      );

  static const CONSTRUCTOR = 'searchInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
