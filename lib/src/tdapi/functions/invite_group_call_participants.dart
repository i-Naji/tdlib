part of '../tdapi.dart';

class InviteGroupCallParticipants extends TdFunction {

  /// Invites users to an active group call. Sends a service message of type messageInviteToGroupCall for video chats
  const InviteGroupCallParticipants({
    required this.groupCallId,
    required this.userIds,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "user_ids": userIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  InviteGroupCallParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) => InviteGroupCallParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    userIds: userIds ?? this.userIds,
  );

  static const CONSTRUCTOR = 'inviteGroupCallParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
