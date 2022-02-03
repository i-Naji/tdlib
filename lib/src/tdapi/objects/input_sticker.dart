part of '../tdapi.dart';

class InputSticker extends TdObject {

  /// Describes a sticker that needs to be added to a sticker set
  const InputSticker();
  
  /// a InputSticker return type can be :
  /// * [InputStickerStatic]
  /// * [InputStickerAnimated]
  factory InputSticker.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputStickerStatic.CONSTRUCTOR:
        return InputStickerStatic.fromJson(json);
      case InputStickerAnimated.CONSTRUCTOR:
        return InputStickerAnimated.fromJson(json);
      default:
        return const InputSticker();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputSticker copyWith() => const InputSticker();

  static const CONSTRUCTOR = 'inputSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStickerStatic extends InputSticker {

  /// A static sticker in PNG format, which will be converted to WEBP server-side
  const InputStickerStatic({
    required this.sticker,
    required this.emojis,
    this.maskPosition,
  });
  
  /// [sticker] PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512 square
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;

  /// [maskPosition] For masks, position where the mask is placed; pass null if unspecified
  final MaskPosition? maskPosition;
  
  /// Parse from a json
  factory InputStickerStatic.fromJson(Map<String, dynamic> json) => InputStickerStatic(
    sticker: InputFile.fromJson(json['sticker']),
    emojis: json['emojis'],
    maskPosition: json['mask_position'] == null ? null : MaskPosition.fromJson(json['mask_position']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "emojis": emojis,
      "mask_position": maskPosition?.toJson(),
    };
  }
  
  @override
  InputStickerStatic copyWith({
    InputFile? sticker,
    String? emojis,
    MaskPosition? maskPosition,
  }) => InputStickerStatic(
    sticker: sticker ?? this.sticker,
    emojis: emojis ?? this.emojis,
    maskPosition: maskPosition ?? this.maskPosition,
  );

  static const CONSTRUCTOR = 'inputStickerStatic';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputStickerAnimated extends InputSticker {

  /// An animated sticker in TGS format
  const InputStickerAnimated({
    required this.sticker,
    required this.emojis,
  });
  
  /// [sticker] File with the animated sticker. Only local or uploaded within a week files are supported. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  final InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  final String emojis;
  
  /// Parse from a json
  factory InputStickerAnimated.fromJson(Map<String, dynamic> json) => InputStickerAnimated(
    sticker: InputFile.fromJson(json['sticker']),
    emojis: json['emojis'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "emojis": emojis,
    };
  }
  
  @override
  InputStickerAnimated copyWith({
    InputFile? sticker,
    String? emojis,
  }) => InputStickerAnimated(
    sticker: sticker ?? this.sticker,
    emojis: emojis ?? this.emojis,
  );

  static const CONSTRUCTOR = 'inputStickerAnimated';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
