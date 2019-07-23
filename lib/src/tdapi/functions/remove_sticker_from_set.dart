part of '../tdapi.dart';

class RemoveStickerFromSet extends TdFunction {
  var sticker;
  dynamic extra;

  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  ///[sticker] Sticker
  RemoveStickerFromSet({this.sticker});

  /// Parse from a json
  RemoveStickerFromSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "removeStickerFromSet";

  @override
  String getConstructor() => CONSTRUCTOR;
}
