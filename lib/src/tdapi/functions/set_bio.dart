part of '../tdapi.dart';

class SetBio extends TLFunction {
  String bio;
  dynamic extra;

  /// Changes the bio of the current user.
  ///[bio] The new value of the user bio; 0-70 characters without line feeds
  SetBio({this.bio});

  /// Parse from a json
  SetBio.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "bio": this.bio, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "setBio";

  @override
  String getConstructor() => CONSTRUCTOR;
}
