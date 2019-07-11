part of '../tdapi.dart';

class GetUserProfilePhotos extends TLFunction {
  int userId;
  int offset;
  int limit;
  dynamic extra;

  /// Returns the profile photos of a user. The result of this query may be outdated.
  ///
  GetUserProfilePhotos({this.userId, this.offset, this.limit});

  /// Parse from a json
  GetUserProfilePhotos.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getUserProfilePhotos";

  @override
  String getConstructor() => CONSTRUCTOR;
}
