part of '../tdapi.dart';

class RemoveStickerFromSet extends TdFunction {

  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
  const RemoveStickerFromSet({
    required this.sticker,
  });
  
  /// [sticker] Sticker
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  RemoveStickerFromSet copyWith({
    InputFile? sticker,
  }) => RemoveStickerFromSet(
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'removeStickerFromSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
