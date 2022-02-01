part of '../tdapi.dart';

class DeleteProfilePhoto extends TdFunction {

  /// Deletes a profile photo
  const DeleteProfilePhoto({
    required this.profilePhotoId,
  });
  
  /// [profilePhotoId] Identifier of the profile photo to delete
  final int profilePhotoId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "profile_photo_id": profilePhotoId,
      "@extra": extra,
    };
  }
  
  DeleteProfilePhoto copyWith({
    int? profilePhotoId,
  }) => DeleteProfilePhoto(
    profilePhotoId: profilePhotoId ?? this.profilePhotoId,
  );

  static const CONSTRUCTOR = 'deleteProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
