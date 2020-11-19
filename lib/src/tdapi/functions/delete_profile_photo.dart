part of '../tdapi.dart';

class DeleteProfilePhoto extends TdFunction {
  /// Deletes a profile photo
  DeleteProfilePhoto({this.profilePhotoId});

  /// [profilePhotoId] Identifier of the profile photo to delete
  int profilePhotoId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteProfilePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "profile_photo_id": this.profilePhotoId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
