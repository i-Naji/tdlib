part of '../tdapi.dart';

class InputSticker implements TLObject {
  var pngSticker;
  String emojis;
  MaskPosition maskPosition;

  /// Describes a sticker that should be added to a sticker set.
  ///[pngSticker] PNG image with the sticker; must be up to 512 kB in size and fit in a 512x512 square .
  /// [emojis] Emoji corresponding to the sticker .
  /// [maskPosition] For masks, position where the mask should be placed; may be null
  InputSticker({this.pngSticker, this.emojis, this.maskPosition});

  /// Parse from a json
  InputSticker.fromJson(Map<String, dynamic> json) {
    this.pngSticker =
        InputFile.fromJson(json['png_sticker'] ?? <String, dynamic>{});
    this.emojis = json['emojis'];
    this.maskPosition =
        MaskPosition.fromJson(json['mask_position'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'png_sticker': this.pngSticker.toJson(),
      'emojis': this.emojis,
      'mask_position': this.maskPosition.toJson()
    };
  }

  static const String CONSTRUCTOR = 'inputSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
