part of '../tdapi.dart';

class AuthenticationCodeType implements TLObject {
  /// Provides information about the method by which an authentication code is delivered to the user
  AuthenticationCodeType();

  /// a AuthenticationCodeType return type can be :
  /// * AuthenticationCodeTypeSms
  /// * AuthenticationCodeTypeFlashCall
  /// * AuthenticationCodeTypeTelegramMessage
  /// * AuthenticationCodeTypeCall
  factory AuthenticationCodeType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case AuthenticationCodeTypeSms.CONSTRUCTOR:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeFlashCall.CONSTRUCTOR:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      case AuthenticationCodeTypeTelegramMessage.CONSTRUCTOR:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
      case AuthenticationCodeTypeCall.CONSTRUCTOR:
        return AuthenticationCodeTypeCall.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'authenticationCodeType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeTelegramMessage implements AuthenticationCodeType {
  int length;

  /// An authentication code is delivered via a private Telegram message, which can be viewed in another client.
  ///[length] Length of the code
  AuthenticationCodeTypeTelegramMessage({this.length});

  /// Parse from a json
  AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json) {
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'length': this.length};
  }

  static const String CONSTRUCTOR = 'authenticationCodeTypeTelegramMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeSms implements AuthenticationCodeType {
  int length;

  /// An authentication code is delivered via an SMS message to the specified phone number.
  ///[length] Length of the code
  AuthenticationCodeTypeSms({this.length});

  /// Parse from a json
  AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) {
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'length': this.length};
  }

  static const String CONSTRUCTOR = 'authenticationCodeTypeSms';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeCall implements AuthenticationCodeType {
  int length;

  /// An authentication code is delivered via a phone call to the specified phone number.
  ///[length] Length of the code
  AuthenticationCodeTypeCall({this.length});

  /// Parse from a json
  AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) {
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'length': this.length};
  }

  static const String CONSTRUCTOR = 'authenticationCodeTypeCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeFlashCall implements AuthenticationCodeType {
  String pattern;

  /// An authentication code is delivered by an immediately cancelled call to the specified phone number. The number from which the call was made is the code.
  ///[pattern] Pattern of the phone number from which the call will be made
  AuthenticationCodeTypeFlashCall({this.pattern});

  /// Parse from a json
  AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) {
    this.pattern = json['pattern'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'pattern': this.pattern};
  }

  static const String CONSTRUCTOR = 'authenticationCodeTypeFlashCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
