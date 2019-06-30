part of '../tdapi.dart';

class BasicGroup implements TLObject {
  int id;
  int memberCount;
  var status;
  bool everyoneIsAdministrator;
  bool isActive;
  int upgradedToSupergroupId;
  dynamic extra;

  /// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).
  ///[id] Group identifier.
  /// [memberCount] Number of members in the group.
  /// [status] Status of the current user in the group.
  /// [everyoneIsAdministrator] True, if all members have been granted administrator rights in the group.
  /// [isActive] True, if the group is active.
  /// [upgradedToSupergroupId] Identifier of the supergroup to which this group was upgraded; 0 if none
  BasicGroup(
      {this.id,
      this.memberCount,
      this.status,
      this.everyoneIsAdministrator,
      this.isActive,
      this.upgradedToSupergroupId});

  /// Parse from a json
  BasicGroup.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.memberCount = json['member_count'];
    this.status =
        ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.everyoneIsAdministrator = json['everyone_is_administrator'];
    this.isActive = json['is_active'];
    this.upgradedToSupergroupId = json['upgraded_to_supergroup_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'member_count': this.memberCount,
      'status': this.status.toJson(),
      'everyone_is_administrator': this.everyoneIsAdministrator,
      'is_active': this.isActive,
      'upgraded_to_supergroup_id': this.upgradedToSupergroupId
    };
  }

  static const String CONSTRUCTOR = 'basicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
