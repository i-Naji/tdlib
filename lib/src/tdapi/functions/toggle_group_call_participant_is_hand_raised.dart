part of '../tdapi.dart';

class ToggleGroupCallParticipantIsHandRaised extends TdFunction {

  /// Toggles whether a group call participant hand is rased
  const ToggleGroupCallParticipantIsHandRaised({
    required this.groupCallId,
    required this.participantId,
    required this.isHandRaised,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [isHandRaised] Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand
  final bool isHandRaised;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "is_hand_raised": isHandRaised,
      "@extra": extra,
    };
  }
  
  ToggleGroupCallParticipantIsHandRaised copyWith({
    int? groupCallId,
    MessageSender? participantId,
    bool? isHandRaised,
  }) => ToggleGroupCallParticipantIsHandRaised(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    isHandRaised: isHandRaised ?? this.isHandRaised,
  );

  static const CONSTRUCTOR = 'toggleGroupCallParticipantIsHandRaised';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
