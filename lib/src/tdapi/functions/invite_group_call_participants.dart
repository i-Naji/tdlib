part of '../tdapi.dart';

class InviteGroupCallParticipants extends TdFunction {
  /// Invites users to a group call. Sends a service message of type messageInviteToGroupCall for voice chats
  InviteGroupCallParticipants({this.groupCallId, this.userIds});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  List<int> userIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  InviteGroupCallParticipants.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_ids": this.userIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'inviteGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
