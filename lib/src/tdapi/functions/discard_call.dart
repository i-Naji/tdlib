part of '../tdapi.dart';

class DiscardCall extends TdFunction {

  /// Discards a call
  const DiscardCall({
    required this.callId,
    required this.isDisconnected,
    required this.duration,
    required this.isVideo,
    required this.connectionId,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [isDisconnected] True, if the user was disconnected 
  final bool isDisconnected;

  /// [duration] The call duration, in seconds 
  final int duration;

  /// [isVideo] True, if the call was a video call 
  final bool isVideo;

  /// [connectionId] Identifier of the connection used during the call
  final int connectionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "is_disconnected": isDisconnected,
      "duration": duration,
      "is_video": isVideo,
      "connection_id": connectionId,
      "@extra": extra,
    };
  }
  
  DiscardCall copyWith({
    int? callId,
    bool? isDisconnected,
    int? duration,
    bool? isVideo,
    int? connectionId,
  }) => DiscardCall(
    callId: callId ?? this.callId,
    isDisconnected: isDisconnected ?? this.isDisconnected,
    duration: duration ?? this.duration,
    isVideo: isVideo ?? this.isVideo,
    connectionId: connectionId ?? this.connectionId,
  );

  static const CONSTRUCTOR = 'discardCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
