part of '../tdapi.dart';

class SearchStickerSets extends TdFunction {
  String query;
  dynamic extra;

  /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results.
  ///[query] Query to search for
  SearchStickerSets({this.query});

  /// Parse from a json
  SearchStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "query": this.query, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "searchStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
