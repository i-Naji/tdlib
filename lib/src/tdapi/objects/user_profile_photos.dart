part of '../tdapi.dart';

class UserProfilePhotos extends TdObject {
  int totalCount;
  List<UserProfilePhoto> photos;
  dynamic extra;

  /// Contains part of the list of user photos. 
  /// [totalCount] Total number of user profile photos . 
  /// [photos] A list of photos
  UserProfilePhotos({this.totalCount,
    this.photos});

  /// Parse from a json
  UserProfilePhotos.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.photos = List<UserProfilePhoto>.from((json['photos'] ?? []).map((item) => UserProfilePhoto.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "photos": this.photos.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userProfilePhotos';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}