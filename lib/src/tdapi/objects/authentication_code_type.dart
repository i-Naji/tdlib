part of '../tdapi.dart';

class AuthenticationCodeType extends TdObject {
  /// Provides information about the method by which an authentication code is delivered to the user
  const AuthenticationCodeType();

  /// a AuthenticationCodeType return type can be :
  /// * [AuthenticationCodeTypeTelegramMessage]
  /// * [AuthenticationCodeTypeSms]
  /// * [AuthenticationCodeTypeCall]
  /// * [AuthenticationCodeTypeFlashCall]
  /// * [AuthenticationCodeTypeMissedCall]
  /// * [AuthenticationCodeTypeFragment]
  /// * [AuthenticationCodeTypeFirebaseAndroid]
  /// * [AuthenticationCodeTypeFirebaseIos]
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
      case AuthenticationCodeTypeMissedCall.CONSTRUCTOR:
        return AuthenticationCodeTypeMissedCall.fromJson(json);
      case AuthenticationCodeTypeFragment.CONSTRUCTOR:
        return AuthenticationCodeTypeFragment.fromJson(json);
      case AuthenticationCodeTypeFirebaseAndroid.CONSTRUCTOR:
        return AuthenticationCodeTypeFirebaseAndroid.fromJson(json);
      case AuthenticationCodeTypeFirebaseIos.CONSTRUCTOR:
        return AuthenticationCodeTypeFirebaseIos.fromJson(json);
      default:
        return const AuthenticationCodeType();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  AuthenticationCodeType copyWith() => const AuthenticationCodeType();

  static const CONSTRUCTOR = 'authenticationCodeType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
  const AuthenticationCodeTypeTelegramMessage({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeTelegramMessage.fromJson(
          Map<String, dynamic> json) =>
      AuthenticationCodeTypeTelegramMessage(
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeTelegramMessage copyWith({
    int? length,
  }) =>
      AuthenticationCodeTypeTelegramMessage(
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeTelegramMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  /// An authentication code is delivered via an SMS message to the specified phone number; applications may not receive this type of code
  const AuthenticationCodeTypeSms({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) =>
      AuthenticationCodeTypeSms(
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeSms copyWith({
    int? length,
  }) =>
      AuthenticationCodeTypeSms(
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeSms';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  /// An authentication code is delivered via a phone call to the specified phone number
  const AuthenticationCodeTypeCall({
    required this.length,
  });

  /// [length] Length of the code
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) =>
      AuthenticationCodeTypeCall(
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeCall copyWith({
    int? length,
  }) =>
      AuthenticationCodeTypeCall(
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically
  const AuthenticationCodeTypeFlashCall({
    required this.pattern,
  });

  /// [pattern] Pattern of the phone number from which the call will be made
  final String pattern;

  /// Parse from a json
  factory AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) =>
      AuthenticationCodeTypeFlashCall(
        pattern: json['pattern'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "pattern": pattern,
    };
  }

  @override
  AuthenticationCodeTypeFlashCall copyWith({
    String? pattern,
  }) =>
      AuthenticationCodeTypeFlashCall(
        pattern: pattern ?? this.pattern,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeFlashCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeMissedCall extends AuthenticationCodeType {
  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user
  const AuthenticationCodeTypeMissedCall({
    required this.phoneNumberPrefix,
    required this.length,
  });

  /// [phoneNumberPrefix] Prefix of the phone number from which the call will be made
  final String phoneNumberPrefix;

  /// [length] Number of digits in the code, excluding the prefix
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeMissedCall.fromJson(
          Map<String, dynamic> json) =>
      AuthenticationCodeTypeMissedCall(
        phoneNumberPrefix: json['phone_number_prefix'],
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number_prefix": phoneNumberPrefix,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeMissedCall copyWith({
    String? phoneNumberPrefix,
    int? length,
  }) =>
      AuthenticationCodeTypeMissedCall(
        phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix,
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeMissedCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeFragment extends AuthenticationCodeType {
  /// An authentication code is delivered to https://fragment.com. The user must be logged in there via a wallet owning the phone number's NFT
  const AuthenticationCodeTypeFragment({
    required this.url,
    required this.length,
  });

  /// [url] URL to open to receive the code
  final String url;

  /// [length] Length of the code
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeFragment.fromJson(Map<String, dynamic> json) =>
      AuthenticationCodeTypeFragment(
        url: json['url'],
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeFragment copyWith({
    String? url,
    int? length,
  }) =>
      AuthenticationCodeTypeFragment(
        url: url ?? this.url,
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeFragment';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeFirebaseAndroid extends AuthenticationCodeType {
  /// An authentication code is delivered via Firebase Authentication to the official Android application
  const AuthenticationCodeTypeFirebaseAndroid({
    required this.nonce,
    required this.length,
  });

  /// [nonce] Nonce to pass to the SafetyNet Attestation API
  final String nonce;

  /// [length] Length of the code
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeFirebaseAndroid.fromJson(
          Map<String, dynamic> json) =>
      AuthenticationCodeTypeFirebaseAndroid(
        nonce: json['nonce'],
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "nonce": nonce,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeFirebaseAndroid copyWith({
    String? nonce,
    int? length,
  }) =>
      AuthenticationCodeTypeFirebaseAndroid(
        nonce: nonce ?? this.nonce,
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeFirebaseAndroid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class AuthenticationCodeTypeFirebaseIos extends AuthenticationCodeType {
  /// An authentication code is delivered via Firebase Authentication to the official iOS application
  const AuthenticationCodeTypeFirebaseIos({
    required this.receipt,
    required this.pushTimeout,
    required this.length,
  });

  /// [receipt] Receipt of successful application token validation to compare with receipt from push notification
  final String receipt;

  /// [pushTimeout] Time after the next authentication method is supposed to be used if verification push notification isn't received, in seconds
  final int pushTimeout;

  /// [length] Length of the code
  final int length;

  /// Parse from a json
  factory AuthenticationCodeTypeFirebaseIos.fromJson(
          Map<String, dynamic> json) =>
      AuthenticationCodeTypeFirebaseIos(
        receipt: json['receipt'],
        pushTimeout: json['push_timeout'],
        length: json['length'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "receipt": receipt,
      "push_timeout": pushTimeout,
      "length": length,
    };
  }

  @override
  AuthenticationCodeTypeFirebaseIos copyWith({
    String? receipt,
    int? pushTimeout,
    int? length,
  }) =>
      AuthenticationCodeTypeFirebaseIos(
        receipt: receipt ?? this.receipt,
        pushTimeout: pushTimeout ?? this.pushTimeout,
        length: length ?? this.length,
      );

  static const CONSTRUCTOR = 'authenticationCodeTypeFirebaseIos';

  @override
  String getConstructor() => CONSTRUCTOR;
}
