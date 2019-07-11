part of '../tdapi.dart';

class SetStickerPositionInSet extends TLFunction {
  var sticker;
  int position;
  dynamic extra;

  /// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  ///[sticker] Sticker .
  /// [position] New position of the sticker in the set, zero-based
  SetStickerPositionInSet({this.sticker, this.position});

  /// Parse from a json
  SetStickerPositionInSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "position": this.position,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setStickerPositionInSet";

  @override
  String getConstructor() => CONSTRUCTOR;
}
