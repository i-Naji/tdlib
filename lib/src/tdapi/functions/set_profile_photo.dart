part of '../tdapi.dart';

class SetProfilePhoto extends TdFunction {
  InputChatPhoto photo;
  dynamic extra;

  /// Changes a profile photo for the current user. 
  /// [photo] Profile photo to set
  SetProfilePhoto({this.photo});

  /// Parse from a json
  SetProfilePhoto.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}