part of '../tdapi.dart';

class ChatPhotoInfo extends TdObject {
  File small;
  File big;
  bool hasAnimation;

  /// Contains basic information about the photo of a chat. 
  /// [small] A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed. 
  /// [big] A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed. 
  /// [hasAnimation] True, if the photo has animated variant
  ChatPhotoInfo({this.small,
    this.big,
    this.hasAnimation});

  /// Parse from a json
  ChatPhotoInfo.fromJson(Map<String, dynamic> json)  {
    this.small = File.fromJson(json['small'] ?? <String, dynamic>{});
    this.big = File.fromJson(json['big'] ?? <String, dynamic>{});
    this.hasAnimation = json['has_animation'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "small": this.small.toJson(),
      "big": this.big.toJson(),
      "has_animation": this.hasAnimation,
    };
  }

  static const CONSTRUCTOR = 'chatPhotoInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}