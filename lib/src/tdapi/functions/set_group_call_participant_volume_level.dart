part of '../tdapi.dart';

class SetGroupCallParticipantVolumeLevel extends TdFunction {

  /// Changes volume level of a participant of an active group call. If the current user can manage the group call, then the participant's volume level will be changed for all users with the default volume level
  const SetGroupCallParticipantVolumeLevel({
    required this.groupCallId,
    required this.participantId,
    required this.volumeLevel,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier 
  final MessageSender participantId;

  /// [volumeLevel] New participant's volume level; 1-20000 in hundreds of percents
  final int volumeLevel;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "volume_level": volumeLevel,
      "@extra": extra,
    };
  }
  
  SetGroupCallParticipantVolumeLevel copyWith({
    int? groupCallId,
    MessageSender? participantId,
    int? volumeLevel,
  }) => SetGroupCallParticipantVolumeLevel(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    volumeLevel: volumeLevel ?? this.volumeLevel,
  );

  static const CONSTRUCTOR = 'setGroupCallParticipantVolumeLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
