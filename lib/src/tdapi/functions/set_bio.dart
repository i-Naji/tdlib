part of '../tdapi.dart';

class SetBio extends TdFunction {
  /// Changes the bio of the current user
  SetBio({this.bio});

  /// [bio] The new value of the user bio; 0-70 characters without line feeds
  String bio;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetBio.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bio": this.bio,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setBio';

  @override
  String getConstructor() => CONSTRUCTOR;
}
