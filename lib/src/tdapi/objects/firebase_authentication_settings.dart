part of '../tdapi.dart';

class FirebaseAuthenticationSettings extends TdObject {
  /// Contains settings for Firebase Authentication in the official applications
  const FirebaseAuthenticationSettings();

  /// a FirebaseAuthenticationSettings return type can be :
  /// * [FirebaseAuthenticationSettingsAndroid]
  /// * [FirebaseAuthenticationSettingsIos]
  factory FirebaseAuthenticationSettings.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case FirebaseAuthenticationSettingsAndroid.CONSTRUCTOR:
        return FirebaseAuthenticationSettingsAndroid.fromJson(json);
      case FirebaseAuthenticationSettingsIos.CONSTRUCTOR:
        return FirebaseAuthenticationSettingsIos.fromJson(json);
      default:
        return const FirebaseAuthenticationSettings();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  FirebaseAuthenticationSettings copyWith() =>
      const FirebaseAuthenticationSettings();

  static const CONSTRUCTOR = 'firebaseAuthenticationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FirebaseAuthenticationSettingsAndroid
    extends FirebaseAuthenticationSettings {
  /// Settings for Firebase Authentication in the official Android application
  const FirebaseAuthenticationSettingsAndroid();

  /// Parse from a json
  factory FirebaseAuthenticationSettingsAndroid.fromJson(
          Map<String, dynamic> json) =>
      const FirebaseAuthenticationSettingsAndroid();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  FirebaseAuthenticationSettingsAndroid copyWith() =>
      const FirebaseAuthenticationSettingsAndroid();

  static const CONSTRUCTOR = 'firebaseAuthenticationSettingsAndroid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FirebaseAuthenticationSettingsIos extends FirebaseAuthenticationSettings {
  /// Settings for Firebase Authentication in the official iOS application
  const FirebaseAuthenticationSettingsIos({
    required this.deviceToken,
    required this.isAppSandbox,
  });

  /// [deviceToken] Device token from Apple Push Notification service
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  /// Parse from a json
  factory FirebaseAuthenticationSettingsIos.fromJson(
          Map<String, dynamic> json) =>
      FirebaseAuthenticationSettingsIos(
        deviceToken: json['device_token'],
        isAppSandbox: json['is_app_sandbox'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "device_token": deviceToken,
      "is_app_sandbox": isAppSandbox,
    };
  }

  @override
  FirebaseAuthenticationSettingsIos copyWith({
    String? deviceToken,
    bool? isAppSandbox,
  }) =>
      FirebaseAuthenticationSettingsIos(
        deviceToken: deviceToken ?? this.deviceToken,
        isAppSandbox: isAppSandbox ?? this.isAppSandbox,
      );

  static const CONSTRUCTOR = 'firebaseAuthenticationSettingsIos';

  @override
  String getConstructor() => CONSTRUCTOR;
}
