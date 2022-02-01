part of '../tdapi.dart';

class SearchInstalledStickerSets extends TdFunction {

  /// Searches for installed sticker sets by looking for specified query in their title and name
  const SearchInstalledStickerSets({
    required this.isMasks,
    required this.query,
    required this.limit,
  });
  
  /// [isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets 
  final bool isMasks;

  /// [query] Query to search for 
  final String query;

  /// [limit] The maximum number of sticker sets to return
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": isMasks,
      "query": query,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchInstalledStickerSets copyWith({
    bool? isMasks,
    String? query,
    int? limit,
  }) => SearchInstalledStickerSets(
    isMasks: isMasks ?? this.isMasks,
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'searchInstalledStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
