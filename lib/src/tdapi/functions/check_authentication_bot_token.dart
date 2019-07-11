part of '../tdapi.dart';

class CheckAuthenticationBotToken extends TLFunction {
  String token;
  dynamic extra;

  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  ///[token] The bot token
  CheckAuthenticationBotToken({this.token});

  /// Parse from a json
  CheckAuthenticationBotToken.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "token": this.token, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "checkAuthenticationBotToken";

  @override
  String getConstructor() => CONSTRUCTOR;
}
