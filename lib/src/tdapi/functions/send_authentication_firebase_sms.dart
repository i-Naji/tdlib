part of '../tdapi.dart';

class SendAuthenticationFirebaseSms extends TdFunction {
  /// Sends Firebase Authentication SMS to the phone number of the user. Works only when the current authorization state is authorizationStateWaitCode and the server returned code of the type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos
  const SendAuthenticationFirebaseSms({
    required this.token,
  });

  /// [token] SafetyNet Attestation API token for the Android application, or secret from push notification for the iOS application
  final String token;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
      "@extra": extra,
    };
  }

  SendAuthenticationFirebaseSms copyWith({
    String? token,
  }) =>
      SendAuthenticationFirebaseSms(
        token: token ?? this.token,
      );

  static const CONSTRUCTOR = 'sendAuthenticationFirebaseSms';

  @override
  String getConstructor() => CONSTRUCTOR;
}
