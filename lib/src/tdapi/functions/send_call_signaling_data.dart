part of '../tdapi.dart';

class SendCallSignalingData extends TdFunction {
  /// Sends call signaling data
  SendCallSignalingData({this.callId, this.data});

  /// [callId] Call identifier
  int callId;

  /// [data] The data
  String data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendCallSignalingData.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "data": this.data,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCallSignalingData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
