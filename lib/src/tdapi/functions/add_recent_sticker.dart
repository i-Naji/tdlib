part of '../tdapi.dart';

class AddRecentSticker extends TdFunction {
  /// Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
  AddRecentSticker({this.isAttached, this.sticker});

  /// [isAttached] Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers
  bool isAttached;

  /// [sticker] Sticker file to add
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AddRecentSticker.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addRecentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
