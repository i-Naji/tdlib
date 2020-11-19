part of '../tdapi.dart';

class SearchStickerSets extends TdFunction {
  /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
  SearchStickerSets({this.query});

  /// [query] Query to search for
  String query;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
