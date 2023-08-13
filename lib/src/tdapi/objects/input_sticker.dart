part of '../tdapi.dart';

class InputSticker extends TdObject {
  /// A sticker to be added to a sticker set
  const InputSticker({
    required this.sticker,
    required this.emojis,
    this.maskPosition,
    required this.keywords,
  });

  /// [sticker] File with the sticker; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  final InputFile sticker;

  /// [emojis] String with 1-20 emoji corresponding to the sticker
  final String emojis;

  /// [maskPosition] Position where the mask is placed; pass null if not specified
  final MaskPosition? maskPosition;

  /// [keywords] List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker
  final List<String> keywords;

  /// Parse from a json
  factory InputSticker.fromJson(Map<String, dynamic> json) => InputSticker(
        sticker: InputFile.fromJson(json['sticker']),
        emojis: json['emojis'],
        maskPosition: json['mask_position'] == null
            ? null
            : MaskPosition.fromJson(json['mask_position']),
        keywords: List<String>.from(
            (json['keywords'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "emojis": emojis,
      "mask_position": maskPosition?.toJson(),
      "keywords": keywords.map((i) => i).toList(),
    };
  }

  InputSticker copyWith({
    InputFile? sticker,
    String? emojis,
    MaskPosition? maskPosition,
    List<String>? keywords,
  }) =>
      InputSticker(
        sticker: sticker ?? this.sticker,
        emojis: emojis ?? this.emojis,
        maskPosition: maskPosition ?? this.maskPosition,
        keywords: keywords ?? this.keywords,
      );

  static const CONSTRUCTOR = 'inputSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
