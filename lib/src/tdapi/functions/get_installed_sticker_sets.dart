part of '../tdapi.dart';

class GetInstalledStickerSets extends TdFunction {
  /// Returns a list of installed sticker sets
  GetInstalledStickerSets({this.isMasks});

  /// [isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  bool isMasks;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetInstalledStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
