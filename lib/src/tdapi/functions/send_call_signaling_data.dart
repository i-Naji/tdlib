part of '../tdapi.dart';

class SendCallSignalingData extends TdFunction {

  /// Sends call signaling data
  const SendCallSignalingData({
    required this.callId,
    required this.data,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [data] The data
  final String data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "data": data,
      "@extra": extra,
    };
  }
  
  SendCallSignalingData copyWith({
    int? callId,
    String? data,
  }) => SendCallSignalingData(
    callId: callId ?? this.callId,
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'sendCallSignalingData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
