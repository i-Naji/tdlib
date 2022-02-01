part of '../tdapi.dart';

class GroupCallRecentSpeaker extends TdObject {

  /// Describes a recently speaking participant in a group call
  const GroupCallRecentSpeaker({
    required this.participantId,
    required this.isSpeaking,
  });
  
  /// [participantId] Group call participant identifier 
  final MessageSender participantId;

  /// [isSpeaking] True, is the user has spoken recently
  final bool isSpeaking;
  
  /// Parse from a json
  factory GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) => GroupCallRecentSpeaker(
    participantId: MessageSender.fromJson(json['participant_id']),
    isSpeaking: json['is_speaking'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "participant_id": participantId.toJson(),
      "is_speaking": isSpeaking,
    };
  }
  
  GroupCallRecentSpeaker copyWith({
    MessageSender? participantId,
    bool? isSpeaking,
  }) => GroupCallRecentSpeaker(
    participantId: participantId ?? this.participantId,
    isSpeaking: isSpeaking ?? this.isSpeaking,
  );

  static const CONSTRUCTOR = 'groupCallRecentSpeaker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
