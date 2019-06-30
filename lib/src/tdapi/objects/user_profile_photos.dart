part of '../tdapi.dart';

class UserProfilePhotos implements TLObject {
  int totalCount;
  List<UserProfilePhoto> photos;
  dynamic extra;

  /// Contains part of the list of user photos.
  ///[totalCount] Total number of user profile photos .
  /// [photos] A list of photos
  UserProfilePhotos({this.totalCount, this.photos});

  /// Parse from a json
  UserProfilePhotos.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.photos = (json['photos'] ?? [])
        .map((listValue) => UserProfilePhoto.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'total_count': this.totalCount,
      'photos': this.photos.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'userProfilePhotos';

  @override
  String getConstructor() => CONSTRUCTOR;
}
