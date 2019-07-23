part of '../tdapi.dart';

class GetAllPassportElements extends TdFunction {
  String password;
  dynamic extra;

  /// Returns all available Telegram Passport elements.
  ///[password] Password of the current user
  GetAllPassportElements({this.password});

  /// Parse from a json
  GetAllPassportElements.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getAllPassportElements";

  @override
  String getConstructor() => CONSTRUCTOR;
}
