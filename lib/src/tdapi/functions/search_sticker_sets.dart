part of '../tdapi.dart';

class SearchStickerSets extends TdFunction {

  /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
  const SearchStickerSets({
    required this.query,
  });
  
  /// [query] Query to search for
  final String query;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "@extra": extra,
    };
  }
  
  SearchStickerSets copyWith({
    String? query,
  }) => SearchStickerSets(
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'searchStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
