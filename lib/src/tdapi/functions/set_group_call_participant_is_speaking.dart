part of '../tdapi.dart';

class SetGroupCallParticipantIsSpeaking extends TdFunction {

  /// Informs TDLib that speaking state of a participant of an active group has changed
  const SetGroupCallParticipantIsSpeaking({
    required this.groupCallId,
    required this.audioSource,
    required this.isSpeaking,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSource] Group call participant's synchronization audio source identifier, or 0 for the current user
  final int audioSource;

  /// [isSpeaking] True, if the user is speaking
  final bool isSpeaking;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "audio_source": audioSource,
      "is_speaking": isSpeaking,
      "@extra": extra,
    };
  }
  
  SetGroupCallParticipantIsSpeaking copyWith({
    int? groupCallId,
    int? audioSource,
    bool? isSpeaking,
  }) => SetGroupCallParticipantIsSpeaking(
    groupCallId: groupCallId ?? this.groupCallId,
    audioSource: audioSource ?? this.audioSource,
    isSpeaking: isSpeaking ?? this.isSpeaking,
  );

  static const CONSTRUCTOR = 'setGroupCallParticipantIsSpeaking';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
