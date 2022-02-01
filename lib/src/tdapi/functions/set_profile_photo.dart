part of '../tdapi.dart';

class SetProfilePhoto extends TdFunction {

  /// Changes a profile photo for the current user
  const SetProfilePhoto({
    required this.photo,
  });
  
  /// [photo] Profile photo to set
  final InputChatPhoto photo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "@extra": extra,
    };
  }
  
  SetProfilePhoto copyWith({
    InputChatPhoto? photo,
  }) => SetProfilePhoto(
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'setProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
