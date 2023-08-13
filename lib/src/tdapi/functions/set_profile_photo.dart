part of '../tdapi.dart';

class SetProfilePhoto extends TdFunction {
  /// Changes a profile photo for the current user
  const SetProfilePhoto({
    required this.photo,
    required this.isPublic,
  });

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  /// [isPublic] Pass true to set a public photo, which will be visible even the main photo is hidden by privacy settings
  final bool isPublic;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "is_public": isPublic,
      "@extra": extra,
    };
  }

  SetProfilePhoto copyWith({
    InputChatPhoto? photo,
    bool? isPublic,
  }) =>
      SetProfilePhoto(
        photo: photo ?? this.photo,
        isPublic: isPublic ?? this.isPublic,
      );

  static const CONSTRUCTOR = 'setProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
