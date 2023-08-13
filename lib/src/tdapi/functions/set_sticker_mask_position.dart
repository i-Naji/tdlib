part of '../tdapi.dart';

class SetStickerMaskPosition extends TdFunction {
  /// Changes the mask position of a mask sticker; for bots only. The sticker must belong to a mask sticker set created by the bot
  const SetStickerMaskPosition({
    required this.sticker,
    this.maskPosition,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [maskPosition] Position where the mask is placed; pass null to remove mask position
  final MaskPosition? maskPosition;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "mask_position": maskPosition?.toJson(),
      "@extra": extra,
    };
  }

  SetStickerMaskPosition copyWith({
    InputFile? sticker,
    MaskPosition? maskPosition,
  }) =>
      SetStickerMaskPosition(
        sticker: sticker ?? this.sticker,
        maskPosition: maskPosition ?? this.maskPosition,
      );

  static const CONSTRUCTOR = 'setStickerMaskPosition';

  @override
  String getConstructor() => CONSTRUCTOR;
}
