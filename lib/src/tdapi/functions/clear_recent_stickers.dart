part of '../tdapi.dart';

class ClearRecentStickers extends TLFunction {
  bool isAttached;
  dynamic extra;

  /// Clears the list of recently used stickers.
  ///[isAttached] Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers
  ClearRecentStickers({this.isAttached});

  /// Parse from a json
  ClearRecentStickers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'is_attached': this.isAttached,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'clearRecentStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
