part of '../tdapi.dart';

class RemoveRecentSticker extends TdFunction {

  /// Removes a sticker from the list of recently used stickers
  const RemoveRecentSticker({
    required this.isAttached,
    required this.sticker,
  });
  
  /// [isAttached] Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers 
  final bool isAttached;

  /// [sticker] Sticker file to delete
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": isAttached,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  RemoveRecentSticker copyWith({
    bool? isAttached,
    InputFile? sticker,
  }) => RemoveRecentSticker(
    isAttached: isAttached ?? this.isAttached,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'removeRecentSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
