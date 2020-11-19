part of '../tdapi.dart';

class SetProfilePhoto extends TdFunction {
  /// Changes a profile photo for the current user
  SetProfilePhoto({this.photo});

  /// [photo] Profile photo to set
  InputChatPhoto photo;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetProfilePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
