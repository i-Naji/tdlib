part of '../tdapi.dart';

class SetUserPersonalProfilePhoto extends TdFunction {
  /// Changes a personal profile photo of a contact user
  const SetUserPersonalProfilePhoto({
    required this.userId,
    this.photo,
  });

  /// [userId] User identifier
  final int userId;

  /// [photo] Profile photo to set; pass null to delete the photo; inputChatPhotoPrevious isn't supported in this function
  final InputChatPhoto? photo;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "photo": photo?.toJson(),
      "@extra": extra,
    };
  }

  SetUserPersonalProfilePhoto copyWith({
    int? userId,
    InputChatPhoto? photo,
  }) =>
      SetUserPersonalProfilePhoto(
        userId: userId ?? this.userId,
        photo: photo ?? this.photo,
      );

  static const CONSTRUCTOR = 'setUserPersonalProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
