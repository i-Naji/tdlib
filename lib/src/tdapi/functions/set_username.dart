part of '../tdapi.dart';

class SetUsername extends TdFunction {
  /// Changes the username of the current user
  SetUsername({this.username});

  /// [username] The new value of the username. Use an empty string to remove the username
  String username;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetUsername.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}
