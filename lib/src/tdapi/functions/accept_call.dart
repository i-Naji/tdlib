part of '../tdapi.dart';

class AcceptCall extends TdFunction {
  /// Accepts an incoming call
  AcceptCall({this.callId, this.protocol});

  /// [callId] Call identifier
  int callId;

  /// [protocol] Description of the call protocols supported by the application
  CallProtocol protocol;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AcceptCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "protocol": this.protocol == null ? null : this.protocol.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'acceptCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
