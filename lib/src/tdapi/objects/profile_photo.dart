part of '../tdapi.dart';

class ProfilePhoto extends TdObject {
  int id;
  File small;
  File big;

  /// Describes a user profile photo. 
  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of userProfilePhotos. 
  /// [small] A small (160x160) user profile photo. The file can be downloaded only before the photo is changed. 
  /// [big] A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
  ProfilePhoto({this.id,
    this.small,
    this.big});

  /// Parse from a json
  ProfilePhoto.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.small = File.fromJson(json['small'] ?? <String, dynamic>{});
    this.big = File.fromJson(json['big'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "small": this.small.toJson(),
      "big": this.big.toJson(),
    };
  }

  static const CONSTRUCTOR = 'profilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}