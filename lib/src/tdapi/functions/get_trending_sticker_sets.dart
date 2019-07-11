part of '../tdapi.dart';

class GetTrendingStickerSets extends TLFunction {
  dynamic extra;

  /// Returns a list of trending sticker sets.
  ///
  GetTrendingStickerSets();

  /// Parse from a json
  GetTrendingStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getTrendingStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
