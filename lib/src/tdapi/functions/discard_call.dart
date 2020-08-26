part of '../tdapi.dart';

class DiscardCall extends TdFunction {
  int callId;
  bool isDisconnected;
  int duration;
  String connectionId;
  dynamic extra;

  /// Discards a call. 
  /// [callId] Call identifier . 
  /// [isDisconnected] True, if the user was disconnected . 
  /// [duration] The call duration, in seconds . 
  /// [connectionId] Identifier of the connection used during the call
  DiscardCall({this.callId,
    this.isDisconnected,
    this.duration,
    this.connectionId});

  /// Parse from a json
  DiscardCall.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "is_disconnected": this.isDisconnected,
      "duration": this.duration,
      "connection_id": this.connectionId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'discardCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}