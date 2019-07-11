part of '../tdapi.dart';

class Supergroup implements TLObject {
  int id;
  String username;
  int date;
  var status;
  int memberCount;
  bool anyoneCanInvite;
  bool signMessages;
  bool isChannel;
  bool isVerified;
  String restrictionReason;
  dynamic extra;

  /// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup.
  ///[id] Supergroup or channel identifier.
  /// [username] Username of the supergroup or channel; empty for private supergroups or channels.
  /// [date] Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member.
  /// [status] Status of the current user in the supergroup or channel.
  /// [memberCount] Member count; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was found through SearchPublicChats.
  /// [anyoneCanInvite] True, if any member of the supergroup can invite other members. This field has no meaning for channels.
  /// [signMessages] True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels.
  /// [isChannel] True, if the supergroup is a channel.
  /// [isVerified] True, if the supergroup or channel is verified.
  /// [restrictionReason] If non-empty, contains the reason why access to this supergroup or channel must be restricted. Format of the string is "
  Supergroup(
      {this.id,
      this.username,
      this.date,
      this.status,
      this.memberCount,
      this.anyoneCanInvite,
      this.signMessages,
      this.isChannel,
      this.isVerified,
      this.restrictionReason});

  /// Parse from a json
  Supergroup.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.username = json['username'];
    this.date = json['date'];
    this.status =
        ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.memberCount = json['member_count'];
    this.anyoneCanInvite = json['anyone_can_invite'];
    this.signMessages = json['sign_messages'];
    this.isChannel = json['is_channel'];
    this.isVerified = json['is_verified'];
    this.restrictionReason = json['restriction_reason'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "username": this.username,
      "date": this.date,
      "status": this.status.toJson(),
      "member_count": this.memberCount,
      "anyone_can_invite": this.anyoneCanInvite,
      "sign_messages": this.signMessages,
      "is_channel": this.isChannel,
      "is_verified": this.isVerified,
      "restriction_reason": this.restrictionReason
    };
  }

  static const String CONSTRUCTOR = "supergroup";

  @override
  String getConstructor() => CONSTRUCTOR;
}
