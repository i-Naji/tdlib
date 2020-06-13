part of '../tdapi.dart';

class AuthorizationState extends TdObject {
  

  /// Represents the current authorization state of the client
  AuthorizationState();

  /// a AuthorizationState return type can be :
  /// * AuthorizationStateWaitTdlibParameters
  /// * AuthorizationStateWaitEncryptionKey
  /// * AuthorizationStateWaitPhoneNumber
  /// * AuthorizationStateWaitCode
  /// * AuthorizationStateWaitOtherDeviceConfirmation
  /// * AuthorizationStateWaitRegistration
  /// * AuthorizationStateWaitPassword
  /// * AuthorizationStateReady
  /// * AuthorizationStateLoggingOut
  /// * AuthorizationStateClosing
  /// * AuthorizationStateClosed
  factory AuthorizationState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitEncryptionKey.CONSTRUCTOR:
        return AuthorizationStateWaitEncryptionKey.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'authorizationState';
}

class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  dynamic extra;

  /// TDLib needs TdlibParameters for initialization
  AuthorizationStateWaitTdlibParameters();

  /// Parse from a json
  AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitTdlibParameters';
}

class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  bool isEncrypted;
  dynamic extra;

  /// TDLib needs an encryption key to decrypt the local database. 
  /// [isEncrypted] True, if the database is currently encrypted
  AuthorizationStateWaitEncryptionKey({this.isEncrypted});

  /// Parse from a json
  AuthorizationStateWaitEncryptionKey.fromJson(Map<String, dynamic> json)  {
    this.isEncrypted = json['is_encrypted'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_encrypted": this.isEncrypted,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitEncryptionKey';
}

class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  dynamic extra;

  /// TDLib needs the user's phone number to authorize. Call
  AuthorizationStateWaitPhoneNumber();

  /// Parse from a json
  AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitPhoneNumber';
}

class AuthorizationStateWaitCode extends AuthorizationState {
  AuthenticationCodeInfo codeInfo;
  dynamic extra;

  /// TDLib needs the user's authentication code to authorize. 
  /// [codeInfo] Information about the authorization code that was sent
  AuthorizationStateWaitCode({this.codeInfo});

  /// Parse from a json
  AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json)  {
    this.codeInfo = AuthenticationCodeInfo.fromJson(json['code_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code_info": this.codeInfo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitCode';
}

class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  String link;
  dynamic extra;

  /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link. 
  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  AuthorizationStateWaitOtherDeviceConfirmation({this.link});

  /// Parse from a json
  AuthorizationStateWaitOtherDeviceConfirmation.fromJson(Map<String, dynamic> json)  {
    this.link = json['link'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitOtherDeviceConfirmation';
}

class AuthorizationStateWaitRegistration extends AuthorizationState {
  TermsOfService termsOfService;
  dynamic extra;

  /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration. 
  /// [termsOfService] Telegram terms of service
  AuthorizationStateWaitRegistration({this.termsOfService});

  /// Parse from a json
  AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json)  {
    this.termsOfService = TermsOfService.fromJson(json['terms_of_service'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service": this.termsOfService.toJson(),
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitRegistration';
}

class AuthorizationStateWaitPassword extends AuthorizationState {
  String passwordHint;
  bool hasRecoveryEmailAddress;
  String recoveryEmailAddressPattern;
  dynamic extra;

  /// The user has been authorized, but needs to enter a password to start using the application. 
  /// [passwordHint] Hint for the password; may be empty . 
  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set up. 
  /// [recoveryEmailAddressPattern] Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  AuthorizationStateWaitPassword({this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.recoveryEmailAddressPattern});

  /// Parse from a json
  AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json)  {
    this.passwordHint = json['password_hint'];
    this.hasRecoveryEmailAddress = json['has_recovery_email_address'];
    this.recoveryEmailAddressPattern = json['recovery_email_address_pattern'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password_hint": this.passwordHint,
      "has_recovery_email_address": this.hasRecoveryEmailAddress,
      "recovery_email_address_pattern": this.recoveryEmailAddressPattern,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateWaitPassword';
}

class AuthorizationStateReady extends AuthorizationState {
  dynamic extra;

  /// The user has been successfully authorized. TDLib is now ready to answer queries
  AuthorizationStateReady();

  /// Parse from a json
  AuthorizationStateReady.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateReady';
}

class AuthorizationStateLoggingOut extends AuthorizationState {
  dynamic extra;

  /// The user is currently logging out
  AuthorizationStateLoggingOut();

  /// Parse from a json
  AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateLoggingOut';
}

class AuthorizationStateClosing extends AuthorizationState {
  dynamic extra;

  /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
  AuthorizationStateClosing();

  /// Parse from a json
  AuthorizationStateClosing.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateClosing';
}

class AuthorizationStateClosed extends AuthorizationState {
  dynamic extra;

  /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to. with error code 500. To continue working, one should create a new instance of the TDLib client
  AuthorizationStateClosed();

  /// Parse from a json
  AuthorizationStateClosed.fromJson(Map<String, dynamic> json)  {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'authorizationStateClosed';
}