part of '../tdapi.dart';

class SuggestUserProfilePhoto extends TdFunction {
  /// Suggests a profile photo to another regular user with common messages
  const SuggestUserProfilePhoto({
    required this.userId,
    required this.photo,
  });

  /// [userId] User identifier
  final int userId;

  /// [photo] Profile photo to suggest; inputChatPhotoPrevious isn't supported in this function
  final InputChatPhoto photo;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "photo": photo.toJson(),
      "@extra": extra,
    };
  }

  SuggestUserProfilePhoto copyWith({
    int? userId,
    InputChatPhoto? photo,
  }) =>
      SuggestUserProfilePhoto(
        userId: userId ?? this.userId,
        photo: photo ?? this.photo,
      );

  static const CONSTRUCTOR = 'suggestUserProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
