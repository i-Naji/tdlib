part of '../tdapi.dart';

class GetUserProfilePhotos extends TdFunction {
  /// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
  GetUserProfilePhotos({this.userId, this.offset, this.limit});

  /// [userId] User identifier
  int userId;

  /// [offset] The number of photos to skip; must be non-negative
  int offset;

  /// [limit] The maximum number of photos to be returned; up to 100
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetUserProfilePhotos.fromJson(Map<String, dynamic> json);

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

  @override
  String getConstructor() => CONSTRUCTOR;
}
