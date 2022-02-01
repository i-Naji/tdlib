part of '../tdapi.dart';

class GroupCallParticipantVideoInfo extends TdObject {

  /// Contains information about a group call participant's video channel
  const GroupCallParticipantVideoInfo({
    required this.sourceGroups,
    required this.endpointId,
    required this.isPaused,
  });
  
  /// [sourceGroups] List of synchronization source groups of the video 
  final List<GroupCallVideoSourceGroup> sourceGroups;

  /// [endpointId] Video channel endpoint identifier
  final String endpointId;

  /// [isPaused] True if the video is paused. This flag needs to be ignored, if new video frames are received
  final bool isPaused;
  
  /// Parse from a json
  factory GroupCallParticipantVideoInfo.fromJson(Map<String, dynamic> json) => GroupCallParticipantVideoInfo(
    sourceGroups: List<GroupCallVideoSourceGroup>.from((json['source_groups'] ?? []).map((item) => GroupCallVideoSourceGroup.fromJson(item)).toList()),
    endpointId: json['endpoint_id'],
    isPaused: json['is_paused'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "source_groups": sourceGroups.map((i) => i.toJson()).toList(),
      "endpoint_id": endpointId,
      "is_paused": isPaused,
    };
  }
  
  GroupCallParticipantVideoInfo copyWith({
    List<GroupCallVideoSourceGroup>? sourceGroups,
    String? endpointId,
    bool? isPaused,
  }) => GroupCallParticipantVideoInfo(
    sourceGroups: sourceGroups ?? this.sourceGroups,
    endpointId: endpointId ?? this.endpointId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const CONSTRUCTOR = 'groupCallParticipantVideoInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
