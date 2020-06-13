part of '../tdapi.dart';

class GetPushReceiverId extends TdFunction {
  String payload;
  dynamic extra;

  /// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [payload] JSON-encoded push notification payload
  GetPushReceiverId({this.payload});

  /// Parse from a json
  GetPushReceiverId.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "payload": this.payload,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPushReceiverId';
}