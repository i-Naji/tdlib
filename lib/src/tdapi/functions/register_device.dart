part of '../tdapi.dart';

class RegisterDevice extends TdFunction {
  /// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription
  RegisterDevice({this.deviceToken, this.otherUserIds});

  /// [deviceToken] Device token
  DeviceToken deviceToken;

  /// [otherUserIds] List of user identifiers of other users currently using the application
  List<int> otherUserIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RegisterDevice.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "device_token":
          this.deviceToken == null ? null : this.deviceToken.toJson(),
      "other_user_ids": this.otherUserIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'registerDevice';

  @override
  String getConstructor() => CONSTRUCTOR;
}
