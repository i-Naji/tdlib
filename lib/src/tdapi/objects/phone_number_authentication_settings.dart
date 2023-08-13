part of '../tdapi.dart';

class PhoneNumberAuthenticationSettings extends TdObject {
  /// Contains settings for the authentication of the user's phone number
  const PhoneNumberAuthenticationSettings({
    required this.allowFlashCall,
    required this.allowMissedCall,
    required this.isCurrentPhoneNumber,
    required this.allowSmsRetrieverApi,
    this.firebaseAuthenticationSettings,
    required this.authenticationTokens,
  });

  /// [allowFlashCall] Pass true if the authentication code may be sent via a flash call to the specified phone number
  final bool allowFlashCall;

  /// [allowMissedCall] Pass true if the authentication code may be sent via a missed call to the specified phone number
  final bool allowMissedCall;

  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used on the current device
  final bool isCurrentPhoneNumber;

  /// [allowSmsRetrieverApi] For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services
  final bool allowSmsRetrieverApi;

  /// [firebaseAuthenticationSettings] For official Android and iOS applications only; pass null otherwise. Settings for Firebase Authentication
  final FirebaseAuthenticationSettings? firebaseAuthenticationSettings;

  /// [authenticationTokens] List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions
  final List<String> authenticationTokens;

  /// Parse from a json
  factory PhoneNumberAuthenticationSettings.fromJson(
          Map<String, dynamic> json) =>
      PhoneNumberAuthenticationSettings(
        allowFlashCall: json['allow_flash_call'],
        allowMissedCall: json['allow_missed_call'],
        isCurrentPhoneNumber: json['is_current_phone_number'],
        allowSmsRetrieverApi: json['allow_sms_retriever_api'],
        firebaseAuthenticationSettings:
            json['firebase_authentication_settings'] == null
                ? null
                : FirebaseAuthenticationSettings.fromJson(
                    json['firebase_authentication_settings']),
        authenticationTokens: List<String>.from(
            (json['authentication_tokens'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "allow_flash_call": allowFlashCall,
      "allow_missed_call": allowMissedCall,
      "is_current_phone_number": isCurrentPhoneNumber,
      "allow_sms_retriever_api": allowSmsRetrieverApi,
      "firebase_authentication_settings":
          firebaseAuthenticationSettings?.toJson(),
      "authentication_tokens": authenticationTokens.map((i) => i).toList(),
    };
  }

  PhoneNumberAuthenticationSettings copyWith({
    bool? allowFlashCall,
    bool? allowMissedCall,
    bool? isCurrentPhoneNumber,
    bool? allowSmsRetrieverApi,
    FirebaseAuthenticationSettings? firebaseAuthenticationSettings,
    List<String>? authenticationTokens,
  }) =>
      PhoneNumberAuthenticationSettings(
        allowFlashCall: allowFlashCall ?? this.allowFlashCall,
        allowMissedCall: allowMissedCall ?? this.allowMissedCall,
        isCurrentPhoneNumber: isCurrentPhoneNumber ?? this.isCurrentPhoneNumber,
        allowSmsRetrieverApi: allowSmsRetrieverApi ?? this.allowSmsRetrieverApi,
        firebaseAuthenticationSettings: firebaseAuthenticationSettings ??
            this.firebaseAuthenticationSettings,
        authenticationTokens: authenticationTokens ?? this.authenticationTokens,
      );

  static const CONSTRUCTOR = 'phoneNumberAuthenticationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
