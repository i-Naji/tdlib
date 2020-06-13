part of '../tdapi.dart';

class RegisterDevice extends TdFunction {
  DeviceToken deviceToken;
  List<List<int>> otherUserIds;
  dynamic extra;

  /// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription. 
  /// [deviceToken] Device token . 
  /// [otherUserIds] List of user identifiers of other users currently using the client
  RegisterDevice({this.deviceToken,
    this.otherUserIds});

  /// Parse from a json
  RegisterDevice.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "device_token": this.deviceToken.toJson(),
      "other_user_ids": this.otherUserIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'registerDevice';
}