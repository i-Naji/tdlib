part of '../tdapi.dart';

class SetProfilePhoto extends TdFunction {
  var photo;
  dynamic extra;

  /// Uploads a new profile photo for the current user. If something changes, updateUser will be sent.
  ///[photo] Profile photo to set. inputFileId and inputFileRemote may still be unsupported
  SetProfilePhoto({this.photo});

  /// Parse from a json
  SetProfilePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setProfilePhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}
