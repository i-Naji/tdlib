part of '../tdapi.dart';

class ProcessPushNotification extends TdFunction {
  /// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization
  ProcessPushNotification({this.payload});

  /// [payload] JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
  String payload;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ProcessPushNotification.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "payload": this.payload,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'processPushNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
