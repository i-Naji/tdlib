part of '../tdapi.dart';

class Sticker extends TdObject {
  /// Describes a sticker
  Sticker(
      {this.setId,
      this.width,
      this.height,
      this.emoji,
      this.isAnimated,
      this.isMask,
      this.maskPosition,
      this.outline,
      this.thumbnail,
      this.sticker});

  /// [setId] The identifier of the sticker set to which the sticker belongs; 0 if none
  int setId;

  /// [width] Sticker width; as defined by the sender
  int width;

  /// [height] Sticker height; as defined by the sender
  int height;

  /// [emoji] Emoji corresponding to the sticker
  String emoji;

  /// [isAnimated] True, if the sticker is an animated sticker in TGS format
  bool isAnimated;

  /// [isMask] True, if the sticker is a mask
  bool isMask;

  /// [maskPosition] Position where the mask should be placed; may be null
  MaskPosition maskPosition;

  /// [outline] Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  List<ClosedVectorPath> outline;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  Thumbnail thumbnail;

  /// [sticker] File containing the sticker
  File sticker;

  /// Parse from a json
  Sticker.fromJson(Map<String, dynamic> json) {
    this.setId = int.tryParse(json['set_id'] ?? "");
    this.width = json['width'];
    this.height = json['height'];
    this.emoji = json['emoji'];
    this.isAnimated = json['is_animated'];
    this.isMask = json['is_mask'];
    this.maskPosition =
        MaskPosition.fromJson(json['mask_position'] ?? <String, dynamic>{});
    this.outline = List<ClosedVectorPath>.from((json['outline'] ?? [])
        .map((item) => ClosedVectorPath.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.sticker = File.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "width": this.width,
      "height": this.height,
      "emoji": this.emoji,
      "is_animated": this.isAnimated,
      "is_mask": this.isMask,
      "mask_position":
          this.maskPosition == null ? null : this.maskPosition.toJson(),
      "outline": this.outline.map((i) => i.toJson()).toList(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'sticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
