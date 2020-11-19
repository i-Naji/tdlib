part of '../tdapi.dart';

class GetUser extends TdFunction {
  /// Returns information about a user by their identifier. This is an offline request if the current user is not a bot
  GetUser({this.userId});

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
