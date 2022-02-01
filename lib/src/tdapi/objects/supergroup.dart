part of '../tdapi.dart';

class Supergroup extends TdObject {

  /// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
  const Supergroup({
    required this.id,
    required this.username,
    required this.date,
    required this.status,
    required this.memberCount,
    required this.hasLinkedChat,
    required this.hasLocation,
    required this.signMessages,
    required this.isSlowModeEnabled,
    required this.isChannel,
    required this.isBroadcastGroup,
    required this.isVerified,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    this.extra,
    this.clientId,
  });
  
  /// [id] Supergroup or channel identifier
  final int id;

  /// [username] Username of the supergroup or channel; empty for private supergroups or channels
  final String username;

  /// [date] Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  final int date;

  /// [status] Status of the current user in the supergroup or channel; custom title will be always empty
  final ChatMemberStatus status;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through searchPublicChats, searchChatsNearby, getInactiveSupergroupChats, getSuitableDiscussionChats, getGroupsInCommon, or getUserPrivacySettingRules
  final int memberCount;

  /// [hasLinkedChat] True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  final bool hasLinkedChat;

  /// [hasLocation] True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  final bool hasLocation;

  /// [signMessages] True, if messages sent to the channel need to contain information about the sender. This field is only applicable to channels
  final bool signMessages;

  /// [isSlowModeEnabled] True, if the slow mode is enabled in the supergroup
  final bool isSlowModeEnabled;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  /// [isBroadcastGroup] True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
  final bool isBroadcastGroup;

  /// [isVerified] True, if the supergroup or channel is verified
  final bool isVerified;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this supergroup or channel as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this supergroup or channel as a fake account
  final bool isFake;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Supergroup.fromJson(Map<String, dynamic> json) => Supergroup(
    id: json['id'],
    username: json['username'],
    date: json['date'],
    status: ChatMemberStatus.fromJson(json['status']),
    memberCount: json['member_count'],
    hasLinkedChat: json['has_linked_chat'],
    hasLocation: json['has_location'],
    signMessages: json['sign_messages'],
    isSlowModeEnabled: json['is_slow_mode_enabled'],
    isChannel: json['is_channel'],
    isBroadcastGroup: json['is_broadcast_group'],
    isVerified: json['is_verified'],
    restrictionReason: json['restriction_reason'],
    isScam: json['is_scam'],
    isFake: json['is_fake'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "username": username,
      "date": date,
      "status": status.toJson(),
      "member_count": memberCount,
      "has_linked_chat": hasLinkedChat,
      "has_location": hasLocation,
      "sign_messages": signMessages,
      "is_slow_mode_enabled": isSlowModeEnabled,
      "is_channel": isChannel,
      "is_broadcast_group": isBroadcastGroup,
      "is_verified": isVerified,
      "restriction_reason": restrictionReason,
      "is_scam": isScam,
      "is_fake": isFake,
    };
  }
  
  Supergroup copyWith({
    int? id,
    String? username,
    int? date,
    ChatMemberStatus? status,
    int? memberCount,
    bool? hasLinkedChat,
    bool? hasLocation,
    bool? signMessages,
    bool? isSlowModeEnabled,
    bool? isChannel,
    bool? isBroadcastGroup,
    bool? isVerified,
    String? restrictionReason,
    bool? isScam,
    bool? isFake,
    dynamic extra,
    int? clientId,
  }) => Supergroup(
    id: id ?? this.id,
    username: username ?? this.username,
    date: date ?? this.date,
    status: status ?? this.status,
    memberCount: memberCount ?? this.memberCount,
    hasLinkedChat: hasLinkedChat ?? this.hasLinkedChat,
    hasLocation: hasLocation ?? this.hasLocation,
    signMessages: signMessages ?? this.signMessages,
    isSlowModeEnabled: isSlowModeEnabled ?? this.isSlowModeEnabled,
    isChannel: isChannel ?? this.isChannel,
    isBroadcastGroup: isBroadcastGroup ?? this.isBroadcastGroup,
    isVerified: isVerified ?? this.isVerified,
    restrictionReason: restrictionReason ?? this.restrictionReason,
    isScam: isScam ?? this.isScam,
    isFake: isFake ?? this.isFake,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'supergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
