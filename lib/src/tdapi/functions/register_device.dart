part of '../tdapi.dart';

class RegisterDevice extends TdFunction {

  /// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
  const RegisterDevice({
    required this.deviceToken,
    required this.otherUserIds,
  });
  
  /// [deviceToken] Device token 
  final DeviceToken deviceToken;

  /// [otherUserIds] List of user identifiers of other users currently using the application
  final List<int> otherUserIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "device_token": deviceToken.toJson(),
      "other_user_ids": otherUserIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  RegisterDevice copyWith({
    DeviceToken? deviceToken,
    List<int>? otherUserIds,
  }) => RegisterDevice(
    deviceToken: deviceToken ?? this.deviceToken,
    otherUserIds: otherUserIds ?? this.otherUserIds,
  );

  static const CONSTRUCTOR = 'registerDevice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
