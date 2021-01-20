part of '../tdapi.dart';

class ChatInviteLinkInfo extends TdObject {
  /// Contains information about a chat invite link
  ChatInviteLinkInfo(
      {this.chatId,
      this.accessibleFor,
      this.type,
      this.title,
      this.photo,
      this.memberCount,
      this.memberUserIds,
      this.isPublic});

  /// [chatId] Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  int accessibleFor;

  /// [type] Contains information about the type of the chat
  ChatType type;

  /// [title] Title of the chat
  String title;

  /// [photo] Chat photo; may be null
  ChatPhotoInfo photo;

  /// [memberCount] Number of members in the chat
  int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to the current user
  List<int> memberUserIds;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  bool isPublic;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) {
    this.chatId = json['chat_id'];
    this.accessibleFor = json['accessible_for'];
    this.type = ChatType.fromJson(json['type'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.photo = ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.memberCount = json['member_count'];
    this.memberUserIds = List<int>.from(
        (json['member_user_ids'] ?? []).map((item) => item).toList());
    this.isPublic = json['is_public'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "accessible_for": this.accessibleFor,
      "type": this.type == null ? null : this.type.toJson(),
      "title": this.title,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "member_count": this.memberCount,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
      "is_public": this.isPublic,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
