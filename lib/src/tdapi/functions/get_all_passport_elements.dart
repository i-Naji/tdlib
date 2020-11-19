part of '../tdapi.dart';

class GetAllPassportElements extends TdFunction {
  /// Returns all available Telegram Passport elements
  GetAllPassportElements({this.password});

  /// [password] Password of the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetAllPassportElements.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAllPassportElements';

  @override
  String getConstructor() => CONSTRUCTOR;
}
