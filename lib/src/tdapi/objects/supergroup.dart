part of '../tdapi.dart';

class Supergroup extends TdObject {
  /// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
  Supergroup(
      {this.id,
      this.username,
      this.date,
      this.status,
      this.memberCount,
      this.hasLinkedChat,
      this.hasLocation,
      this.signMessages,
      this.isSlowModeEnabled,
      this.isChannel,
      this.isVerified,
      this.restrictionReason,
      this.isScam});

  /// [id] Supergroup or channel identifier
  int id;

  /// [username] Username of the supergroup or channel; empty for private supergroups or channels
  String username;

  /// [date] Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  int date;

  /// [status] Status of the current user in the supergroup or channel; custom title will be always empty
  ChatMemberStatus status;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was received through searchPublicChats, searchChatsNearby, getInactiveSupergroupChats, getSuitableDiscussionChats, getGroupsInCommon, or getUserPrivacySettingRules
  int memberCount;

  /// [hasLinkedChat] True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  bool hasLinkedChat;

  /// [hasLocation] True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  bool hasLocation;

  /// [signMessages] True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels
  bool signMessages;

  /// [isSlowModeEnabled] True, if the slow mode is enabled in the supergroup
  bool isSlowModeEnabled;

  /// [isChannel] True, if the supergroup is a channel
  bool isChannel;

  /// [isVerified] True, if the supergroup or channel is verified
  bool isVerified;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  String restrictionReason;

  /// [isScam] True, if many users reported this supergroup as a scam
  bool isScam;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Supergroup.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.username = json['username'];
    this.date = json['date'];
    this.status =
        ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.memberCount = json['member_count'];
    this.hasLinkedChat = json['has_linked_chat'];
    this.hasLocation = json['has_location'];
    this.signMessages = json['sign_messages'];
    this.isSlowModeEnabled = json['is_slow_mode_enabled'];
    this.isChannel = json['is_channel'];
    this.isVerified = json['is_verified'];
    this.restrictionReason = json['restriction_reason'];
    this.isScam = json['is_scam'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "username": this.username,
      "date": this.date,
      "status": this.status == null ? null : this.status.toJson(),
      "member_count": this.memberCount,
      "has_linked_chat": this.hasLinkedChat,
      "has_location": this.hasLocation,
      "sign_messages": this.signMessages,
      "is_slow_mode_enabled": this.isSlowModeEnabled,
      "is_channel": this.isChannel,
      "is_verified": this.isVerified,
      "restriction_reason": this.restrictionReason,
      "is_scam": this.isScam,
    };
  }

  static const CONSTRUCTOR = 'supergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
