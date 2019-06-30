part of '../tdapi.dart';

class SearchStickerSet extends TLFunction {
  String name;
  dynamic extra;

  /// Searches for a sticker set by its name.
  ///[name] Name of the sticker set
  SearchStickerSet({this.name});

  /// Parse from a json
  SearchStickerSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'name': this.name, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'searchStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
