part of '../tdapi.dart';

class GetPushReceiverId extends TdFunction {
  /// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
  GetPushReceiverId({this.payload});

  /// [payload] JSON-encoded push notification payload
  String payload;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPushReceiverId.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "payload": this.payload,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPushReceiverId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
