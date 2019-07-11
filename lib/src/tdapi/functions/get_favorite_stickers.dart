part of '../tdapi.dart';

class GetFavoriteStickers extends TLFunction {
  dynamic extra;

  /// Returns favorite stickers.
  ///
  GetFavoriteStickers();

  /// Parse from a json
  GetFavoriteStickers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getFavoriteStickers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
