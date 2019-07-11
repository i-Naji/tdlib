part of '../tdapi.dart';

class AuthorizationState implements TLObject {
  /// Represents the current authorization state of the client
  AuthorizationState();

  /// a AuthorizationState return type can be :
  /// * AuthorizationStateWaitTdlibParameters
  /// * AuthorizationStateWaitEncryptionKey
  /// * AuthorizationStateWaitPhoneNumber
  /// * AuthorizationStateWaitCode
  /// * AuthorizationStateWaitPassword
  /// * AuthorizationStateReady
  /// * AuthorizationStateLoggingOut
  /// * AuthorizationStateClosing
  /// * AuthorizationStateClosed
  factory AuthorizationState.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitEncryptionKey.CONSTRUCTOR:
        return AuthorizationStateWaitEncryptionKey.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitCode.CONSTRUCTOR:
        return AuthorizationStateWaitCode.fromJson(json);
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
    return {};
  }

  static const String CONSTRUCTOR = "authorizationState";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitTdlibParameters implements AuthorizationState {
  dynamic extra;

  /// TDLib needs TdlibParameters for initialization.
  ///
  AuthorizationStateWaitTdlibParameters();

  /// Parse from a json
  AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "authorizationStateWaitTdlibParameters";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitEncryptionKey implements AuthorizationState {
  bool isEncrypted;
  dynamic extra;

  /// TDLib needs an encryption key to decrypt the local database.
  ///[isEncrypted] True, if the database is currently encrypted
  AuthorizationStateWaitEncryptionKey({this.isEncrypted});

  /// Parse from a json
  AuthorizationStateWaitEncryptionKey.fromJson(Map<String, dynamic> json) {
    this.isEncrypted = json['is_encrypted'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "is_encrypted": this.isEncrypted};
  }

  static const String CONSTRUCTOR = "authorizationStateWaitEncryptionKey";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitPhoneNumber implements AuthorizationState {
  dynamic extra;

  /// TDLib needs the user's phone number to authorize.
  ///
  AuthorizationStateWaitPhoneNumber();

  /// Parse from a json
  AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "authorizationStateWaitPhoneNumber";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitCode implements AuthorizationState {
  bool isRegistered;
  TermsOfService termsOfService;
  AuthenticationCodeInfo codeInfo;
  dynamic extra;

  /// TDLib needs the user's authentication code to finalize authorization.
  ///[isRegistered] True, if the user is already registered .
  /// [termsOfService] Telegram terms of service, which should be accepted before user can continue registration; may be null .
  /// [codeInfo] Information about the authorization code that was sent
  AuthorizationStateWaitCode(
      {this.isRegistered, this.termsOfService, this.codeInfo});

  /// Parse from a json
  AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) {
    this.isRegistered = json['is_registered'];
    this.termsOfService = TermsOfService.fromJson(
        json['terms_of_service'] ?? <String, dynamic>{});
    this.codeInfo = AuthenticationCodeInfo.fromJson(
        json['code_info'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_registered": this.isRegistered,
      "terms_of_service": this.termsOfService.toJson(),
      "code_info": this.codeInfo.toJson()
    };
  }

  static const String CONSTRUCTOR = "authorizationStateWaitCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateWaitPassword implements AuthorizationState {
  String passwordHint;
  bool hasRecoveryEmailAddress;
  String recoveryEmailAddressPattern;
  dynamic extra;

  /// The user has been authorized, but needs to enter a password to start using the application.
  ///[passwordHint] Hint for the password; may be empty .
  /// [hasRecoveryEmailAddress] True if a recovery email address has been set up.
  /// [recoveryEmailAddressPattern] Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  AuthorizationStateWaitPassword(
      {this.passwordHint,
      this.hasRecoveryEmailAddress,
      this.recoveryEmailAddressPattern});

  /// Parse from a json
  AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) {
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
      "recovery_email_address_pattern": this.recoveryEmailAddressPattern
    };
  }

  static const String CONSTRUCTOR = "authorizationStateWaitPassword";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateReady implements AuthorizationState {
  dynamic extra;

  /// The user has been successfully authorized. TDLib is now ready to answer queries.
  ///
  AuthorizationStateReady();

  /// Parse from a json
  AuthorizationStateReady.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "authorizationStateReady";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateLoggingOut implements AuthorizationState {
  dynamic extra;

  /// The user is currently logging out.
  ///
  AuthorizationStateLoggingOut();

  /// Parse from a json
  AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "authorizationStateLoggingOut";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateClosing implements AuthorizationState {
  dynamic extra;

  /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received.
  ///
  AuthorizationStateClosing();

  /// Parse from a json
  AuthorizationStateClosing.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "authorizationStateClosing";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthorizationStateClosed implements AuthorizationState {
  dynamic extra;

  /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to. with error code 500. To continue working, one should create a new instance of the TDLib client.
  ///
  AuthorizationStateClosed();

  /// Parse from a json
  AuthorizationStateClosed.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "authorizationStateClosed";

  @override
  String getConstructor() => CONSTRUCTOR;
}
