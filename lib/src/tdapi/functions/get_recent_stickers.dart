part of '../tdapi.dart';

class GetRecentStickers extends TdFunction {
  /// Returns a list of recently used stickers
  GetRecentStickers({this.isAttached});

  /// [isAttached] Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
  bool isAttached;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetRecentStickers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
