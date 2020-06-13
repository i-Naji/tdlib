part of '../tdapi.dart';

class UserProfilePhotos extends TdObject {
  int totalCount;
  List<List<UserProfilePhoto>> photos;
  dynamic extra;

  /// Contains part of the list of user photos. 
  /// [totalCount] Total number of user profile photos . 
  /// [photos] A list of photos
  UserProfilePhotos({this.totalCount,
    this.photos});

  /// Parse from a json
  UserProfilePhotos.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.photos = List<List<UserProfilePhoto>>.from((json['photos'] ?? []).map((item) => List<UserProfilePhoto>.from((item ?? []).map((innerItem) => UserProfilePhoto.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "photos": this.photos.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userProfilePhotos';
}