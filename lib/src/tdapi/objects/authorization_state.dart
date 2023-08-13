part of '../tdapi.dart';

class AuthorizationState extends TdObject {
  /// Represents the current authorization state of the TDLib client
  const AuthorizationState();

  /// a AuthorizationState return type can be :
  /// * [AuthorizationStateWaitTdlibParameters]
  /// * [AuthorizationStateWaitPhoneNumber]
  /// * [AuthorizationStateWaitEmailAddress]
  /// * [AuthorizationStateWaitEmailCode]
  /// * [AuthorizationStateWaitCode]
  /// * [AuthorizationStateWaitOtherDeviceConfirmation]
  /// * [AuthorizationStateWaitRegistration]
  /// * [AuthorizationStateWaitPassword]
  /// * [AuthorizationStateReady]
  /// * [AuthorizationStateLoggingOut]
  /// * [AuthorizationStateClosing]
  /// * [AuthorizationStateClosed]
  factory AuthorizationState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitEmailAddress.CONSTRUCTOR:
        return AuthorizationStateWaitEmailAddress.fromJson(json);
      case AuthorizationStateWaitEmailCode.CONSTRUCTOR:
        return AuthorizationStateWaitEmailCode.fromJson(json);
      case AuthorizationStateWaitCode.CONSTRUCTOR:
        return AuthorizationStateWaitCode.fromJson(json);
      case AuthorizationStateWaitOtherDeviceConfirmation.CONSTRUCTOR:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);
      case AuthorizationStateWaitRegistration.CONSTRUCTOR:
        return AuthorizationStateWaitRegistration.fromJson(json);
      case AuthorizationStateWaitPassword.CONSTRUCTOR:
        return AuthorizationStateWaitPassword.fromJson(json);
      case AuthorizationStateReady.CONSTRUCTOR:
        return AuthorizationStateReady.fromJson(json);
      case AuthorizationStateLoggingOut.CONSTRUCTOR:
        return AuthorizationStateLoggingOut.fromJson(json);
      case AuthorizationStateClosing.CONSTRUCTOR:
        return AuthorizationStateClosing.fromJson(json);
      case AuthorizationStateClosed.CONSTRUCTOR:
        return AuthorizationStateClosed.fromJson(json);
      default:
        return const AuthorizationState();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  AuthorizationState copyWith() => const AuthorizationState();

  static const CONSTRUCTOR = 'authorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  /// Initialization parameters are needed. Call setTdlibParameters to provide them
  const AuthorizationStateWaitTdlibParameters({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitTdlibParameters.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitTdlibParameters(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AuthorizationStateWaitTdlibParameters copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitTdlibParameters(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitTdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  /// TDLib needs the user's phone number to authorize. Call setAuthenticationPhoneNumber to provide the phone number, or use requestQrCodeAuthentication or checkAuthenticationBotToken for other authentication options
  const AuthorizationStateWaitPhoneNumber({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitPhoneNumber.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitPhoneNumber(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AuthorizationStateWaitPhoneNumber copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitPhoneNumber(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitEmailAddress extends AuthorizationState {
  /// TDLib needs the user's email address to authorize. Call setAuthenticationEmailAddress to provide the email address, or directly call checkAuthenticationEmailCode with Apple authorizationStateWaitEmailAddress/Google authorizationStateWaitEmailAddress token if allowed
  const AuthorizationStateWaitEmailAddress({
    required this.allowAppleId,
    required this.allowGoogleId,
    this.extra,
    this.clientId,
  });

  /// [allowAppleId] True, if authorization through Apple authorizationStateWaitEmailAddress is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google authorizationStateWaitEmailAddress is allowed
  final bool allowGoogleId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitEmailAddress.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitEmailAddress(
        allowAppleId: json['allow_apple_id'],
        allowGoogleId: json['allow_google_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "allow_apple_id": allowAppleId,
      "allow_google_id": allowGoogleId,
    };
  }

  @override
  AuthorizationStateWaitEmailAddress copyWith({
    bool? allowAppleId,
    bool? allowGoogleId,
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitEmailAddress(
        allowAppleId: allowAppleId ?? this.allowAppleId,
        allowGoogleId: allowGoogleId ?? this.allowGoogleId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitEmailCode extends AuthorizationState {
  /// TDLib needs the user's authentication code sent to an email address to authorize. Call checkAuthenticationEmailCode to provide the code
  const AuthorizationStateWaitEmailCode({
    required this.allowAppleId,
    required this.allowGoogleId,
    required this.codeInfo,
    this.emailAddressResetState,
    this.extra,
    this.clientId,
  });

  /// [allowAppleId] True, if authorization through Apple authorizationStateWaitEmailCode is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google authorizationStateWaitEmailCode is allowed
  final bool allowGoogleId;

  /// [codeInfo] Information about the sent authentication code
  final EmailAddressAuthenticationCodeInfo codeInfo;

  /// [emailAddressResetState] Reset state of the email address; may be null if the email address can't be reset
  final EmailAddressResetState? emailAddressResetState;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitEmailCode.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateWaitEmailCode(
        allowAppleId: json['allow_apple_id'],
        allowGoogleId: json['allow_google_id'],
        codeInfo:
            EmailAddressAuthenticationCodeInfo.fromJson(json['code_info']),
        emailAddressResetState: json['email_address_reset_state'] == null
            ? null
            : EmailAddressResetState.fromJson(
                json['email_address_reset_state']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "allow_apple_id": allowAppleId,
      "allow_google_id": allowGoogleId,
      "code_info": codeInfo.toJson(),
      "email_address_reset_state": emailAddressResetState?.toJson(),
    };
  }

  @override
  AuthorizationStateWaitEmailCode copyWith({
    bool? allowAppleId,
    bool? allowGoogleId,
    EmailAddressAuthenticationCodeInfo? codeInfo,
    EmailAddressResetState? emailAddressResetState,
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitEmailCode(
        allowAppleId: allowAppleId ?? this.allowAppleId,
        allowGoogleId: allowGoogleId ?? this.allowGoogleId,
        codeInfo: codeInfo ?? this.codeInfo,
        emailAddressResetState:
            emailAddressResetState ?? this.emailAddressResetState,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitEmailCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitCode extends AuthorizationState {
  /// TDLib needs the user's authentication code to authorize. Call checkAuthenticationCode to check the code
  const AuthorizationStateWaitCode({
    required this.codeInfo,
    this.extra,
    this.clientId,
  });

  /// [codeInfo] Information about the authorization code that was sent
  final AuthenticationCodeInfo codeInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateWaitCode(
        codeInfo: AuthenticationCodeInfo.fromJson(json['code_info']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "code_info": codeInfo.toJson(),
    };
  }

  @override
  AuthorizationStateWaitCode copyWith({
    AuthenticationCodeInfo? codeInfo,
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitCode(
        codeInfo: codeInfo ?? this.codeInfo,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
  const AuthorizationStateWaitOtherDeviceConfirmation({
    required this.link,
    this.extra,
    this.clientId,
  });

  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  final String link;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitOtherDeviceConfirmation.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitOtherDeviceConfirmation(
        link: json['link'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
    };
  }

  @override
  AuthorizationStateWaitOtherDeviceConfirmation copyWith({
    String? link,
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitOtherDeviceConfirmation(
        link: link ?? this.link,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitOtherDeviceConfirmation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitRegistration extends AuthorizationState {
  /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration. Call registerUser to accept the terms of service and provide the data
  const AuthorizationStateWaitRegistration({
    required this.termsOfService,
    this.extra,
    this.clientId,
  });

  /// [termsOfService] Telegram terms of service
  final TermsOfService termsOfService;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitRegistration.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitRegistration(
        termsOfService: TermsOfService.fromJson(json['terms_of_service']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service": termsOfService.toJson(),
    };
  }

  @override
  AuthorizationStateWaitRegistration copyWith({
    TermsOfService? termsOfService,
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitRegistration(
        termsOfService: termsOfService ?? this.termsOfService,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitPassword extends AuthorizationState {
  /// The user has been authorized, but needs to enter a 2-step verification password to start using the application.. Call checkAuthenticationPassword to provide the password, or requestAuthenticationPasswordRecovery to recover the password, or deleteAccount to delete the account after a week
  const AuthorizationStateWaitPassword({
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.hasPassportData,
    required this.recoveryEmailAddressPattern,
    this.extra,
    this.clientId,
  });

  /// [passwordHint] Hint for the password; may be empty
  final String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set up
  final bool hasRecoveryEmailAddress;

  /// [hasPassportData] True, if some Telegram Passport elements were saved
  final bool hasPassportData;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateWaitPassword(
        passwordHint: json['password_hint'],
        hasRecoveryEmailAddress: json['has_recovery_email_address'],
        hasPassportData: json['has_passport_data'],
        recoveryEmailAddressPattern: json['recovery_email_address_pattern'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password_hint": passwordHint,
      "has_recovery_email_address": hasRecoveryEmailAddress,
      "has_passport_data": hasPassportData,
      "recovery_email_address_pattern": recoveryEmailAddressPattern,
    };
  }

  @override
  AuthorizationStateWaitPassword copyWith({
    String? passwordHint,
    bool? hasRecoveryEmailAddress,
    bool? hasPassportData,
    String? recoveryEmailAddressPattern,
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateWaitPassword(
        passwordHint: passwordHint ?? this.passwordHint,
        hasRecoveryEmailAddress:
            hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
        hasPassportData: hasPassportData ?? this.hasPassportData,
        recoveryEmailAddressPattern:
            recoveryEmailAddressPattern ?? this.recoveryEmailAddressPattern,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateWaitPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateReady extends AuthorizationState {
  /// The user has been successfully authorized. TDLib is now ready to answer general requests
  const AuthorizationStateReady({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateReady.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateReady(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AuthorizationStateReady copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateReady(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateLoggingOut extends AuthorizationState {
  /// The user is currently logging out
  const AuthorizationStateLoggingOut({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateLoggingOut(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AuthorizationStateLoggingOut copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateLoggingOut(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateLoggingOut';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateClosing extends AuthorizationState {
  /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
  const AuthorizationStateClosing({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateClosing.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateClosing(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AuthorizationStateClosing copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateClosing(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateClosing';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateClosed extends AuthorizationState {
  /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to. with error code 500. To continue working, one must create a new instance of the TDLib client
  const AuthorizationStateClosed({
    this.extra,
    this.clientId,
  });

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AuthorizationStateClosed.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateClosed(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  AuthorizationStateClosed copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      AuthorizationStateClosed(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'authorizationStateClosed';

  @override
  String getConstructor() => CONSTRUCTOR;
}
