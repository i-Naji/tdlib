part of '../tdapi.dart';

class SetStickerKeywords extends TdFunction {
  /// Changes the list of keywords of a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot
  const SetStickerKeywords({
    required this.sticker,
    required this.keywords,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [keywords] List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker
  final List<String> keywords;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "keywords": keywords.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  SetStickerKeywords copyWith({
    InputFile? sticker,
    List<String>? keywords,
  }) =>
      SetStickerKeywords(
        sticker: sticker ?? this.sticker,
        keywords: keywords ?? this.keywords,
      );

  static const CONSTRUCTOR = 'setStickerKeywords';

  @override
  String getConstructor() => CONSTRUCTOR;
}
