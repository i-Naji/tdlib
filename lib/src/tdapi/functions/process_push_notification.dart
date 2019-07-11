part of '../tdapi.dart';

class ProcessPushNotification extends TLFunction {
  String payload;
  dynamic extra;

  /// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization.
  ///[payload] JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
  ProcessPushNotification({this.payload});

  /// Parse from a json
  ProcessPushNotification.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "payload": this.payload,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "processPushNotification";

  @override
  String getConstructor() => CONSTRUCTOR;
}
