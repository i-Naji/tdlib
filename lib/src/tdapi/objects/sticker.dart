part of '../tdapi.dart';

class Sticker extends TdObject {

  /// Describes a sticker
  const Sticker({
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    required this.isAnimated,
    required this.isMask,
    this.maskPosition,
    required this.outline,
    this.thumbnail,
    required this.sticker,
    this.extra,
    this.clientId,
  });
  
  /// [setId] The identifier of the sticker set to which the sticker belongs; 0 if none 
  final int setId;

  /// [width] Sticker width; as defined by the sender 
  final int width;

  /// [height] Sticker height; as defined by the sender
  final int height;

  /// [emoji] Emoji corresponding to the sticker
  final String emoji;

  /// [isAnimated] True, if the sticker is an animated sticker in TGS format 
  final bool isAnimated;

  /// [isMask] True, if the sticker is a mask 
  final bool isMask;

  /// [maskPosition] Position where the mask is placed; may be null
  final MaskPosition? maskPosition;

  /// [outline] Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> outline;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null 
  final Thumbnail? thumbnail;

  /// [sticker] File containing the sticker
  final File sticker;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Sticker.fromJson(Map<String, dynamic> json) => Sticker(
    setId: int.tryParse(json['set_id'] ?? "") ?? 0,
    width: json['width'],
    height: json['height'],
    emoji: json['emoji'],
    isAnimated: json['is_animated'],
    isMask: json['is_mask'],
    maskPosition: json['mask_position'] == null ? null : MaskPosition.fromJson(json['mask_position']),
    outline: List<ClosedVectorPath>.from((json['outline'] ?? []).map((item) => ClosedVectorPath.fromJson(item)).toList()),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    sticker: File.fromJson(json['sticker']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "set_id": setId,
      "width": width,
      "height": height,
      "emoji": emoji,
      "is_animated": isAnimated,
      "is_mask": isMask,
      "mask_position": maskPosition?.toJson(),
      "outline": outline.map((i) => i.toJson()).toList(),
      "thumbnail": thumbnail?.toJson(),
      "sticker": sticker.toJson(),
    };
  }
  
  Sticker copyWith({
    int? setId,
    int? width,
    int? height,
    String? emoji,
    bool? isAnimated,
    bool? isMask,
    MaskPosition? maskPosition,
    List<ClosedVectorPath>? outline,
    Thumbnail? thumbnail,
    File? sticker,
    dynamic extra,
    int? clientId,
  }) => Sticker(
    setId: setId ?? this.setId,
    width: width ?? this.width,
    height: height ?? this.height,
    emoji: emoji ?? this.emoji,
    isAnimated: isAnimated ?? this.isAnimated,
    isMask: isMask ?? this.isMask,
    maskPosition: maskPosition ?? this.maskPosition,
    outline: outline ?? this.outline,
    thumbnail: thumbnail ?? this.thumbnail,
    sticker: sticker ?? this.sticker,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'sticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
