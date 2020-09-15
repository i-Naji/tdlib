part of '../tdapi.dart';

class UnblockUser extends TdFunction {

  /// Unblocks a user
  UnblockUser({this.userId});

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  UnblockUser.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'unblockUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}