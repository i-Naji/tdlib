part of '../tdapi.dart';

class AuthenticationCodeType extends TdObject {
  /// Provides information about the method by which an authentication code is delivered to the user
  AuthenticationCodeType();

  /// a AuthenticationCodeType return type can be :
  /// * AuthenticationCodeTypeTelegramMessage
  /// * AuthenticationCodeTypeSms
  /// * AuthenticationCodeTypeCall
  /// * AuthenticationCodeTypeFlashCall
  factory AuthenticationCodeType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AuthenticationCodeTypeTelegramMessage.CONSTRUCTOR:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
      case AuthenticationCodeTypeSms.CONSTRUCTOR:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeCall.CONSTRUCTOR:
        return AuthenticationCodeTypeCall.fromJson(json);
      case AuthenticationCodeTypeFlashCall.CONSTRUCTOR:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'authenticationCodeType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
  AuthenticationCodeTypeTelegramMessage({this.length});

  /// [length] Length of the code
  int length;

  /// Parse from a json
  AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json) {
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeTypeTelegramMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  /// An authentication code is delivered via an SMS message to the specified phone number
  AuthenticationCodeTypeSms({this.length});

  /// [length] Length of the code
  int length;

  /// Parse from a json
  AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) {
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeTypeSms';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  /// An authentication code is delivered via a phone call to the specified phone number
  AuthenticationCodeTypeCall({this.length});

  /// [length] Length of the code
  int length;

  /// Parse from a json
  AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) {
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeTypeCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  /// An authentication code is delivered by an immediately cancelled call to the specified phone number. The number from which the call was made is the code
  AuthenticationCodeTypeFlashCall({this.pattern});

  /// [pattern] Pattern of the phone number from which the call will be made
  String pattern;

  /// Parse from a json
  AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) {
    this.pattern = json['pattern'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "pattern": this.pattern,
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeTypeFlashCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
