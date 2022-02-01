part of '../tdapi.dart';

class AcceptCall extends TdFunction {

  /// Accepts an incoming call
  const AcceptCall({
    required this.callId,
    required this.protocol,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol protocol;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "protocol": protocol.toJson(),
      "@extra": extra,
    };
  }
  
  AcceptCall copyWith({
    int? callId,
    CallProtocol? protocol,
  }) => AcceptCall(
    callId: callId ?? this.callId,
    protocol: protocol ?? this.protocol,
  );

  static const CONSTRUCTOR = 'acceptCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
