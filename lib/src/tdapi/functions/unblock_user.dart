part of '../tdapi.dart';

class UnblockUser extends TdFunction {
  int userId;
  dynamic extra;

  /// Removes a user from the blacklist. 
  /// [userId] User identifier
  UnblockUser({this.userId});

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