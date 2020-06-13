part of '../tdapi.dart';

class AuthenticationCodeType extends TdObject {
  

  /// Provides information about the method by which an authentication code is delivered to the user
  AuthenticationCodeType();

  /// a AuthenticationCodeType return type can be :
  /// * AuthenticationCodeTypeTelegramMessage
  /// * AuthenticationCodeTypeSms
  /// * AuthenticationCodeTypeCall
  /// * AuthenticationCodeTypeFlashCall
  factory AuthenticationCodeType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'authenticationCodeType';
}

class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  int length;

  /// An authentication code is delivered via a private Telegram message, which can be viewed in another client. 
  /// [length] Length of the code
  AuthenticationCodeTypeTelegramMessage({this.length});

  /// Parse from a json
  AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json)  {
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
}

class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  int length;

  /// An authentication code is delivered via an SMS message to the specified phone number. 
  /// [length] Length of the code
  AuthenticationCodeTypeSms({this.length});

  /// Parse from a json
  AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json)  {
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
}

class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  int length;

  /// An authentication code is delivered via a phone call to the specified phone number. 
  /// [length] Length of the code
  AuthenticationCodeTypeCall({this.length});

  /// Parse from a json
  AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json)  {
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
}

class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  String pattern;

  /// An authentication code is delivered by an immediately cancelled call to the specified phone number. The number from which the call was made is the code. 
  /// [pattern] Pattern of the phone number from which the call will be made
  AuthenticationCodeTypeFlashCall({this.pattern});

  /// Parse from a json
  AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json)  {
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
}