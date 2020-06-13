part of '../tdapi.dart';

class SupergroupFullInfo extends TdObject {
  String description;
  int memberCount;
  int administratorCount;
  int restrictedCount;
  int bannedCount;
  int linkedChatId;
  int slowModeDelay;
  double slowModeDelayExpiresIn;
  bool canGetMembers;
  bool canSetUsername;
  bool canSetStickerSet;
  bool canSetLocation;
  bool canViewStatistics;
  bool isAllHistoryAvailable;
  int stickerSetId;
  ChatLocation location;
  String inviteLink;
  int upgradedFromBasicGroupId;
  int upgradedFromMaxMessageId;
  dynamic extra;

  /// Contains full information about a supergroup or channel. 
  /// [description] Supergroup or channel description. 
  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown. 
  /// [administratorCount] Number of privileged users in the supergroup or channel; 0 if unknown. 
  /// [restrictedCount] Number of restricted users in the supergroup; 0 if unknown. 
  /// [bannedCount] Number of users banned from chat; 0 if unknown. 
  /// [linkedChatId] Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown. 
  /// [slowModeDelay] Delay between consecutive sent messages for non-administrator supergroup members, in seconds. 
  /// [slowModeDelayExpiresIn] Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero. 
  /// [canGetMembers] True, if members of the chat can be retrieved. 
  /// [canSetUsername] True, if the chat username can be changed. 
  /// [canSetStickerSet] True, if the supergroup sticker set can be changed. 
  /// [canSetLocation] True, if the supergroup location can be changed. 
  /// [canViewStatistics] True, if the channel statistics is available. 
  /// [isAllHistoryAvailable] True, if new chat members will have access to old messages. In public or discussion groups and both public and private channels, old messages are always available, so this option affects only private supergroups without a linked chat. The value of this field is only available for chat administrators. 
  /// [stickerSetId] Identifier of the supergroup sticker set; 0 if none. 
  /// [location] Location to which the supergroup is connected; may be null. 
  /// [inviteLink] Invite link for this chat. 
  /// [upgradedFromBasicGroupId] Identifier of the basic group from which supergroup was upgraded; 0 if none. 
  /// [upgradedFromMaxMessageId] Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  SupergroupFullInfo({this.description,
    this.memberCount,
    this.administratorCount,
    this.restrictedCount,
    this.bannedCount,
    this.linkedChatId,
    this.slowModeDelay,
    this.slowModeDelayExpiresIn,
    this.canGetMembers,
    this.canSetUsername,
    this.canSetStickerSet,
    this.canSetLocation,
    this.canViewStatistics,
    this.isAllHistoryAvailable,
    this.stickerSetId,
    this.location,
    this.inviteLink,
    this.upgradedFromBasicGroupId,
    this.upgradedFromMaxMessageId});

  /// Parse from a json
  SupergroupFullInfo.fromJson(Map<String, dynamic> json)  {
    this.description = json['description'];
    this.memberCount = json['member_count'];
    this.administratorCount = json['administrator_count'];
    this.restrictedCount = json['restricted_count'];
    this.bannedCount = json['banned_count'];
    this.linkedChatId = json['linked_chat_id'];
    this.slowModeDelay = json['slow_mode_delay'];
    this.slowModeDelayExpiresIn = json['slow_mode_delay_expires_in'];
    this.canGetMembers = json['can_get_members'];
    this.canSetUsername = json['can_set_username'];
    this.canSetStickerSet = json['can_set_sticker_set'];
    this.canSetLocation = json['can_set_location'];
    this.canViewStatistics = json['can_view_statistics'];
    this.isAllHistoryAvailable = json['is_all_history_available'];
    this.stickerSetId = json['sticker_set_id'];
    this.location = ChatLocation.fromJson(json['location'] ?? <String, dynamic>{});
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
      "linked_chat_id": this.linkedChatId,
      "slow_mode_delay": this.slowModeDelay,
      "slow_mode_delay_expires_in": this.slowModeDelayExpiresIn,
      "can_get_members": this.canGetMembers,
      "can_set_username": this.canSetUsername,
      "can_set_sticker_set": this.canSetStickerSet,
      "can_set_location": this.canSetLocation,
      "can_view_statistics": this.canViewStatistics,
      "is_all_history_available": this.isAllHistoryAvailable,
      "sticker_set_id": this.stickerSetId,
      "location": this.location.toJson(),
      "invite_link": this.inviteLink,
      "upgraded_from_basic_group_id": this.upgradedFromBasicGroupId,
      "upgraded_from_max_message_id": this.upgradedFromMaxMessageId,
    };
  }

  static const CONSTRUCTOR = 'supergroupFullInfo';
}