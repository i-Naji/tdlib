part of '../tdapi.dart';

class BasicGroup extends TdObject {
  /// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users)
  BasicGroup(
      {this.id,
      this.memberCount,
      this.status,
      this.isActive,
      this.upgradedToSupergroupId});

  /// [id] Group identifier
  int id;

  /// [memberCount] Number of members in the group
  int memberCount;

  /// [status] Status of the current user in the group
  ChatMemberStatus status;

  /// [isActive] True, if the group is active
  bool isActive;

  /// [upgradedToSupergroupId] Identifier of the supergroup to which this group was upgraded; 0 if none
  int upgradedToSupergroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  BasicGroup.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.memberCount = json['member_count'];
    this.status =
        ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.isActive = json['is_active'];
    this.upgradedToSupergroupId = json['upgraded_to_supergroup_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "member_count": this.memberCount,
      "status": this.status == null ? null : this.status.toJson(),
      "is_active": this.isActive,
      "upgraded_to_supergroup_id": this.upgradedToSupergroupId,
    };
  }

  static const CONSTRUCTOR = 'basicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
