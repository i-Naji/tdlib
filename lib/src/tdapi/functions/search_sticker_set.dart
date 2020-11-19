part of '../tdapi.dart';

class SearchStickerSet extends TdFunction {
  /// Searches for a sticker set by its name
  SearchStickerSet({this.name});

  /// [name] Name of the sticker set
  String name;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchStickerSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
