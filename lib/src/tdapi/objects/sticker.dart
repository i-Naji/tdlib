part of '../tdapi.dart';

class Sticker implements TLObject {
  int setId;
  int width;
  int height;
  String emoji;
  bool isMask;
  MaskPosition maskPosition;
  PhotoSize thumbnail;
  File sticker;

  /// Describes a sticker.
  ///[setId] The identifier of the sticker set to which the sticker belongs; 0 if none .
  /// [width] Sticker width; as defined by the sender .
  /// [height] Sticker height; as defined by the sender.
  /// [emoji] Emoji corresponding to the sticker .
  /// [isMask] True, if the sticker is a mask .
  /// [maskPosition] Position where the mask should be placed; may be null .
  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null .
  /// [sticker] File containing the sticker
  Sticker(
      {this.setId,
      this.width,
      this.height,
      this.emoji,
      this.isMask,
      this.maskPosition,
      this.thumbnail,
      this.sticker});

  /// Parse from a json
  Sticker.fromJson(Map<String, dynamic> json) {
    this.setId = json['set_id'];
    this.width = json['width'];
    this.height = json['height'];
    this.emoji = json['emoji'];
    this.isMask = json['is_mask'];
    this.maskPosition =
        MaskPosition.fromJson(json['mask_position'] ?? <String, dynamic>{});
    this.thumbnail =
        PhotoSize.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.sticker = File.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'set_id': this.setId,
      'width': this.width,
      'height': this.height,
      'emoji': this.emoji,
      'is_mask': this.isMask,
      'mask_position': this.maskPosition.toJson(),
      'thumbnail': this.thumbnail.toJson(),
      'sticker': this.sticker.toJson()
    };
  }

  static const String CONSTRUCTOR = 'sticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
