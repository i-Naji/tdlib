part of '../tdapi.dart';

class CheckAuthenticationCode extends TLFunction {
  String code;
  String firstName;
  String lastName;
  dynamic extra;

  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode.
  ///[code] The verification code received via SMS, Telegram message, phone call, or flash call.
  /// [firstName] If the user is not yet registered, the first name of the user; 1-64 characters. You can also pass an empty string for unregistered user there to check verification code validness. In the latter case PHONE_NUMBER_UNOCCUPIED error will be returned for a valid code.
  /// [lastName] If the user is not yet registered; the last name of the user; optional; 0-64 characters
  CheckAuthenticationCode({this.code, this.firstName, this.lastName});

  /// Parse from a json
  CheckAuthenticationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'code': this.code,
      'first_name': this.firstName,
      'last_name': this.lastName,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'checkAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
