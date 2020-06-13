part of '../tdapi.dart';

class GetUserProfilePhotos extends TdFunction {
  int userId;
  int offset;
  int limit;
  dynamic extra;

  /// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already. 
  /// [userId] User identifier . 
  /// [offset] The number of photos to skip; must be non-negative . 
  /// [limit] The maximum number of photos to be returned; up to 100
  GetUserProfilePhotos({this.userId,
    this.offset,
    this.limit});

  /// Parse from a json
  GetUserProfilePhotos.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getUserProfilePhotos';
}