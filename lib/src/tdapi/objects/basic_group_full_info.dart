part of '../tdapi.dart';

class BasicGroupFullInfo implements TLObject {
  int creatorUserId;
  List<ChatMember> members;
  String inviteLink;
  dynamic extra;

  /// Contains full information about a basic group.
  ///[creatorUserId] User identifier of the creator of the group; 0 if unknown .
  /// [members] Group members .
  /// [inviteLink] Invite link for this group; available only for the group creator and only after it has been generated at least once
  BasicGroupFullInfo({this.creatorUserId, this.members, this.inviteLink});

  /// Parse from a json
  BasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    this.creatorUserId = json['creator_user_id'];
    this.members = (json['members'] ?? [])
        .map((listValue) => ChatMember.fromJson(listValue))
        .toList();
    this.inviteLink = json['invite_link'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'creator_user_id': this.creatorUserId,
      'members': this.members.map((listItem) => listItem.toJson()).toList(),
      'invite_link': this.inviteLink
    };
  }

  static const String CONSTRUCTOR = 'basicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
