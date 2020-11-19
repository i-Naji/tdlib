part of '../tdapi.dart';

class RemoveRecentSticker extends TdFunction {
  /// Removes a sticker from the list of recently used stickers
  RemoveRecentSticker({this.isAttached, this.sticker});

  /// [isAttached] Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
  bool isAttached;

  /// [sticker] Sticker file to delete
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveRecentSticker.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeRecentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
