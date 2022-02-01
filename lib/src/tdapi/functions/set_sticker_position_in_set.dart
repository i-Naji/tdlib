part of '../tdapi.dart';

class SetStickerPositionInSet extends TdFunction {

  /// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
  const SetStickerPositionInSet({
    required this.sticker,
    required this.position,
  });
  
  /// [sticker] Sticker
  final InputFile sticker;

  /// [position] New position of the sticker in the set, zero-based
  final int position;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "position": position,
      "@extra": extra,
    };
  }
  
  SetStickerPositionInSet copyWith({
    InputFile? sticker,
    int? position,
  }) => SetStickerPositionInSet(
    sticker: sticker ?? this.sticker,
    position: position ?? this.position,
  );

  static const CONSTRUCTOR = 'setStickerPositionInSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
