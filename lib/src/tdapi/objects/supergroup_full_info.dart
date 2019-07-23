part of '../tdapi.dart';

class SupergroupFullInfo implements TdObject {
  String description;
  int memberCount;
  int administratorCount;
  int restrictedCount;
  int bannedCount;
  bool canGetMembers;
  bool canSetUsername;
  bool canSetStickerSet;
  bool canViewStatistics;
  bool isAllHistoryAvailable;
  int stickerSetId;
  String inviteLink;
  int upgradedFromBasicGroupId;
  int upgradedFromMaxMessageId;
  dynamic extra;

  /// Contains full information about a supergroup or channel.
  ///[paramDescription] Supergroup or channel description.
  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown.
  /// [administratorCount] Number of privileged users in the supergroup or channel; 0 if unknown.
  /// [restrictedCount] Number of restricted users in the supergroup; 0 if unknown.
  /// [bannedCount] Number of users banned from chat; 0 if unknown.
  /// [canGetMembers] True, if members of the chat can be retrieved.
  /// [canSetUsername] True, if the chat can be made public.
  /// [canSetStickerSet] True, if the supergroup sticker set can be changed.
  /// [canViewStatistics] True, if the channel statistics is available through getChatStatisticsUrl.
  /// [isAllHistoryAvailable] True, if new chat members will have access to old messages. In public supergroups and both public and private channels, old messages are always available, so this option affects only private supergroups. The value of this field is only available for chat administrators.
  /// [stickerSetId] Identifier of the supergroup sticker set; 0 if none.
  /// [inviteLink] Invite link for this chat.
  /// [upgradedFromBasicGroupId] Identifier of the basic group from which supergroup was upgraded; 0 if none.
  /// [upgradedFromMaxMessageId] Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  SupergroupFullInfo(
      {this.description,
      this.memberCount,
      this.administratorCount,
      this.restrictedCount,
      this.bannedCount,
      this.canGetMembers,
      this.canSetUsername,
      this.canSetStickerSet,
      this.canViewStatistics,
      this.isAllHistoryAvailable,
      this.stickerSetId,
      this.inviteLink,
      this.upgradedFromBasicGroupId,
      this.upgradedFromMaxMessageId});

  /// Parse from a json
  SupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    this.description = json['description'];
    this.memberCount = json['member_count'];
    this.administratorCount = json['administrator_count'];
    this.restrictedCount = json['restricted_count'];
    this.bannedCount = json['banned_count'];
    this.canGetMembers = json['can_get_members'];
    this.canSetUsername = json['can_set_username'];
    this.canSetStickerSet = json['can_set_sticker_set'];
    this.canViewStatistics = json['can_view_statistics'];
    this.isAllHistoryAvailable = json['is_all_history_available'];
    this.stickerSetId = json['sticker_set_id'];
    this.inviteLink = json['invite_link'];
    this.upgradedFromBasicGroupId = json['upgraded_from_basic_group_id'];
    this.upgradedFromMaxMessageId = json['upgraded_from_max_message_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "description": this.description,
      "member_count": this.memberCount,
      "administrator_count": this.administratorCount,
      "restricted_count": this.restrictedCount,
      "banned_count": this.bannedCount,
      "can_get_members": this.canGetMembers,
      "can_set_username": this.canSetUsername,
      "can_set_sticker_set": this.canSetStickerSet,
      "can_view_statistics": this.canViewStatistics,
      "is_all_history_available": this.isAllHistoryAvailable,
      "sticker_set_id": this.stickerSetId,
      "invite_link": this.inviteLink,
      "upgraded_from_basic_group_id": this.upgradedFromBasicGroupId,
      "upgraded_from_max_message_id": this.upgradedFromMaxMessageId
    };
  }

  static const String CONSTRUCTOR = "supergroupFullInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
