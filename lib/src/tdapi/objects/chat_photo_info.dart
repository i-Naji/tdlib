part of '../tdapi.dart';

class ChatPhotoInfo extends TdObject {

  /// Contains basic information about the photo of a chat
  const ChatPhotoInfo({
    required this.small,
    required this.big,
    this.minithumbnail,
    required this.hasAnimation,
  });
  
  /// [small] A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  final File small;

  /// [big] A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  final File big;

  /// [minithumbnail] Chat photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;
  
  /// Parse from a json
  factory ChatPhotoInfo.fromJson(Map<String, dynamic> json) => ChatPhotoInfo(
    small: File.fromJson(json['small']),
    big: File.fromJson(json['big']),
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    hasAnimation: json['has_animation'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "small": small.toJson(),
      "big": big.toJson(),
      "minithumbnail": minithumbnail?.toJson(),
      "has_animation": hasAnimation,
    };
  }
  
  ChatPhotoInfo copyWith({
    File? small,
    File? big,
    Minithumbnail? minithumbnail,
    bool? hasAnimation,
  }) => ChatPhotoInfo(
    small: small ?? this.small,
    big: big ?? this.big,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    hasAnimation: hasAnimation ?? this.hasAnimation,
  );

  static const CONSTRUCTOR = 'chatPhotoInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
