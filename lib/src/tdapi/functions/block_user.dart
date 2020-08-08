part of '../tdapi.dart';

class BlockUser extends TdFunction {
  int userId;
  dynamic extra;

  /// Blocks a user. 
  /// [userId] User identifier
  BlockUser({this.userId});

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