part of '../tdapi.dart';

class BlockUser extends TdFunction {

  /// Blocks a user
  BlockUser({this.userId});

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  BlockUser.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'blockUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}