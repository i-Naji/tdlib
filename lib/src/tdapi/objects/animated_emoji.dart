part of '../tdapi.dart';

class AnimatedEmoji extends TdObject {

  /// Describes an animated representation of an emoji
  const AnimatedEmoji({
    required this.sticker,
    required this.fitzpatrickType,
    this.sound,
    this.extra,
    this.clientId,
  });
  
  /// [sticker] Animated sticker for the emoji
  final Sticker sticker;

  /// [fitzpatrickType] Emoji modifier fitzpatrick type; 0-6; 0 if none
  final int fitzpatrickType;

  /// [sound] File containing the sound to be played when the animated emoji is clicked if any; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container
  final File? sound;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AnimatedEmoji.fromJson(Map<String, dynamic> json) => AnimatedEmoji(
    sticker: Sticker.fromJson(json['sticker']),
    fitzpatrickType: json['fitzpatrick_type'] ?? 0,
    sound: json['sound'] == null ? null : File.fromJson(json['sound']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "fitzpatrick_type": fitzpatrickType,
      "sound": sound?.toJson(),
    };
  }
  
  AnimatedEmoji copyWith({
    Sticker? sticker,
    int? fitzpatrickType,
    File? sound,
    dynamic extra,
    int? clientId,
  }) => AnimatedEmoji(
    sticker: sticker ?? this.sticker,
    fitzpatrickType: fitzpatrickType ?? this.fitzpatrickType,
    sound: sound ?? this.sound,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'animatedEmoji';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
