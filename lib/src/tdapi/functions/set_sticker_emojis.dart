part of '../tdapi.dart';

class SetStickerEmojis extends TdFunction {
  /// Changes the list of emoji corresponding to a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot
  const SetStickerEmojis({
    required this.sticker,
    required this.emojis,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [emojis] New string with 1-20 emoji corresponding to the sticker
  final String emojis;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "emojis": emojis,
      "@extra": extra,
    };
  }

  SetStickerEmojis copyWith({
    InputFile? sticker,
    String? emojis,
  }) =>
      SetStickerEmojis(
        sticker: sticker ?? this.sticker,
        emojis: emojis ?? this.emojis,
      );

  static const CONSTRUCTOR = 'setStickerEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
