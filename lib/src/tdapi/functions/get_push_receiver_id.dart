part of '../tdapi.dart';

class GetPushReceiverId extends TdFunction {

  /// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
  const GetPushReceiverId({
    required this.payload,
  });
  
  /// [payload] JSON-encoded push notification payload
  final String payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "payload": payload,
      "@extra": extra,
    };
  }
  
  GetPushReceiverId copyWith({
    String? payload,
  }) => GetPushReceiverId(
    payload: payload ?? this.payload,
  );

  static const CONSTRUCTOR = 'getPushReceiverId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
