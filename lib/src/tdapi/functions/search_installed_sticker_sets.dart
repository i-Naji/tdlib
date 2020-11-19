part of '../tdapi.dart';

class SearchInstalledStickerSets extends TdFunction {
  /// Searches for installed sticker sets by looking for specified query in their title and name
  SearchInstalledStickerSets({this.isMasks, this.query, this.limit});

  /// [isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  bool isMasks;

  /// [query] Query to search for
  String query;

  /// [limit] The maximum number of sticker sets to return
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchInstalledStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
