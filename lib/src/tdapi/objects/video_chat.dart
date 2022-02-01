part of '../tdapi.dart';

class VideoChat extends TdObject {

  /// Describes a video chat
  const VideoChat({
    required this.groupCallId,
    required this.hasParticipants,
    this.defaultParticipantId,
  });
  
  /// [groupCallId] Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall
  final int groupCallId;

  /// [hasParticipants] True, if the video chat has participants
  final bool hasParticipants;

  /// [defaultParticipantId] Default group call participant identifier to join the video chat; may be null
  final MessageSender? defaultParticipantId;
  
  /// Parse from a json
  factory VideoChat.fromJson(Map<String, dynamic> json) => VideoChat(
    groupCallId: json['group_call_id'] ?? 0,
    hasParticipants: json['has_participants'],
    defaultParticipantId: json['default_participant_id'] == null ? null : MessageSender.fromJson(json['default_participant_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "has_participants": hasParticipants,
      "default_participant_id": defaultParticipantId?.toJson(),
    };
  }
  
  VideoChat copyWith({
    int? groupCallId,
    bool? hasParticipants,
    MessageSender? defaultParticipantId,
  }) => VideoChat(
    groupCallId: groupCallId ?? this.groupCallId,
    hasParticipants: hasParticipants ?? this.hasParticipants,
    defaultParticipantId: defaultParticipantId ?? this.defaultParticipantId,
  );

  static const CONSTRUCTOR = 'videoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
