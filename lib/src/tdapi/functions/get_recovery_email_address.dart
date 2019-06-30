part of '../tdapi.dart';

class GetRecoveryEmailAddress extends TLFunction {
  String password;
  dynamic extra;

  /// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user.
  ///[password] The password for the current user
  GetRecoveryEmailAddress({this.password});

  /// Parse from a json
  GetRecoveryEmailAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'password': this.password,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'getRecoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
