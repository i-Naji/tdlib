part of '../tdapi.dart';

class CheckAuthenticationBotToken extends TdFunction {
  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
  CheckAuthenticationBotToken({this.token});

  /// [token] The bot token
  String token;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CheckAuthenticationBotToken.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkAuthenticationBotToken';

  @override
  String getConstructor() => CONSTRUCTOR;
}
