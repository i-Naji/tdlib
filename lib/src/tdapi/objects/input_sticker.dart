part of '../tdapi.dart';

class InputSticker extends TdObject {
  

  /// Describes a sticker that needs to be added to a sticker set
  InputSticker();

  /// a InputSticker return type can be :
  /// * InputStickerStatic
  /// * InputStickerAnimated
  factory InputSticker.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputStickerStatic.CONSTRUCTOR:
        return InputStickerStatic.fromJson(json);
      case InputStickerAnimated.CONSTRUCTOR:
        return InputStickerAnimated.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inputSticker';
}

class InputStickerStatic extends InputSticker {
  InputFile sticker;
  String emojis;
  MaskPosition maskPosition;

  /// A static sticker in PNG format, which will be converted to WEBP server-side. 
  /// [sticker] PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512 square. 
  /// [emojis] Emojis corresponding to the sticker. 
  /// [maskPosition] For masks, position where the mask should be placed; may be null
  InputStickerStatic({this.sticker,
    this.emojis,
    this.maskPosition});

  /// Parse from a json
  InputStickerStatic.fromJson(Map<String, dynamic> json)  {
    this.sticker = InputFile.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.emojis = json['emojis'];
    this.maskPosition = MaskPosition.fromJson(json['mask_position'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "emojis": this.emojis,
      "mask_position": this.maskPosition.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputStickerStatic';
}

class InputStickerAnimated extends InputSticker {
  InputFile sticker;
  String emojis;

  /// An animated sticker in TGS format. 
  /// [sticker] File with the animated sticker. Only local or uploaded within a week files are supported. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements. 
  /// [emojis] Emojis corresponding to the sticker
  InputStickerAnimated({this.sticker,
    this.emojis});

  /// Parse from a json
  InputStickerAnimated.fromJson(Map<String, dynamic> json)  {
    this.sticker = InputFile.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.emojis = json['emojis'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "emojis": this.emojis,
    };
  }

  static const CONSTRUCTOR = 'inputStickerAnimated';
}