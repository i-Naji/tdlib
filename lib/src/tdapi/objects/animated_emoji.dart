part of '../tdapi.dart';

class AnimatedEmoji extends TdObject {
  /// Describes an animated or custom representation of an emoji
  const AnimatedEmoji({
    this.sticker,
    required this.stickerWidth,
    required this.stickerHeight,
    required this.fitzpatrickType,
    this.sound,
    this.extra,
    this.clientId,
  });

  /// [sticker] Sticker for the emoji; may be null if yet unknown for a custom emoji. If the sticker is a custom emoji, it can have arbitrary format different from stickerFormatTgs
  final Sticker? sticker;

  /// [stickerWidth] Expected width of the sticker, which can be used if the sticker is null
  final int stickerWidth;

  /// [stickerHeight] Expected height of the sticker, which can be used if the sticker is null
  final int stickerHeight;

  /// [fitzpatrickType] Emoji modifier fitzpatrick type; 0-6; 0 if none
  final int fitzpatrickType;

  /// [sound] File containing the sound to be played when the sticker is clicked; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container
  final File? sound;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AnimatedEmoji.fromJson(Map<String, dynamic> json) => AnimatedEmoji(
        sticker:
            json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
        stickerWidth: json['sticker_width'],
        stickerHeight: json['sticker_height'],
        fitzpatrickType: json['fitzpatrick_type'] ?? 0,
        sound: json['sound'] == null ? null : File.fromJson(json['sound']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker?.toJson(),
      "sticker_width": stickerWidth,
      "sticker_height": stickerHeight,
      "fitzpatrick_type": fitzpatrickType,
      "sound": sound?.toJson(),
    };
  }

  AnimatedEmoji copyWith({
    Sticker? sticker,
    int? stickerWidth,
    int? stickerHeight,
    int? fitzpatrickType,
    File? sound,
    dynamic extra,
    int? clientId,
  }) =>
      AnimatedEmoji(
        sticker: sticker ?? this.sticker,
        stickerWidth: stickerWidth ?? this.stickerWidth,
        stickerHeight: stickerHeight ?? this.stickerHeight,
        fitzpatrickType: fitzpatrickType ?? this.fitzpatrickType,
        sound: sound ?? this.sound,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'animatedEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
