part of '../tdapi.dart';

class CheckAuthenticationBotToken extends TdFunction {

  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
  const CheckAuthenticationBotToken({
    required this.token,
  });
  
  /// [token] The bot token
  final String token;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
      "@extra": extra,
    };
  }
  
  CheckAuthenticationBotToken copyWith({
    String? token,
  }) => CheckAuthenticationBotToken(
    token: token ?? this.token,
  );

  static const CONSTRUCTOR = 'checkAuthenticationBotToken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
