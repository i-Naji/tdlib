part of '../tdapi.dart';

class DeleteProfilePhoto extends TdFunction {
  String profilePhotoId;
  dynamic extra;

  /// Deletes a profile photo. 
  /// [profilePhotoId] Identifier of the profile photo to delete
  DeleteProfilePhoto({this.profilePhotoId});

  /// Parse from a json
  DeleteProfilePhoto.fromJson(Map<String, dynamic> json) ;

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