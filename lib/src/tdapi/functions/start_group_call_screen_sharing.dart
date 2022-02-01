part of '../tdapi.dart';

class StartGroupCallScreenSharing extends TdFunction {

  /// Starts screen sharing in a joined group call. Returns join response payload for tgcalls
  const StartGroupCallScreenSharing({
    required this.groupCallId,
    required this.audioSourceId,
    required this.payload,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSourceId] Screen sharing audio channel synchronization source identifier; received from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "audio_source_id": audioSourceId,
      "payload": payload,
      "@extra": extra,
    };
  }
  
  StartGroupCallScreenSharing copyWith({
    int? groupCallId,
    int? audioSourceId,
    String? payload,
  }) => StartGroupCallScreenSharing(
    groupCallId: groupCallId ?? this.groupCallId,
    audioSourceId: audioSourceId ?? this.audioSourceId,
    payload: payload ?? this.payload,
  );

  static const CONSTRUCTOR = 'startGroupCallScreenSharing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
