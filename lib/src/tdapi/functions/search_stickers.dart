part of '../tdapi.dart';

class SearchStickers extends TdFunction {

  /// Searches for stickers from public sticker sets that correspond to a given emoji
  const SearchStickers({
    required this.emoji,
    required this.limit,
  });
  
  /// [emoji] String representation of emoji; must be non-empty 
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchStickers copyWith({
    String? emoji,
    int? limit,
  }) => SearchStickers(
    emoji: emoji ?? this.emoji,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
