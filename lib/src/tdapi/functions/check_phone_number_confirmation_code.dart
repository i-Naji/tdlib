part of '../tdapi.dart';

class CheckPhoneNumberConfirmationCode extends TdFunction {
  /// Checks phone number confirmation code
  CheckPhoneNumberConfirmationCode({this.code});

  /// [code] The phone number confirmation code
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
