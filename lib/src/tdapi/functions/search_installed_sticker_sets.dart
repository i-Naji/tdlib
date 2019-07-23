part of '../tdapi.dart';

class SearchInstalledStickerSets extends TdFunction {
  bool isMasks;
  String query;
  int limit;
  dynamic extra;

  /// Searches for installed sticker sets by looking for specified query in their title and name.
  ///[isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets .
  /// [query] Query to search for .
  /// [limit] Maximum number of sticker sets to return
  SearchInstalledStickerSets({this.isMasks, this.query, this.limit});

  /// Parse from a json
  SearchInstalledStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "searchInstalledStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
