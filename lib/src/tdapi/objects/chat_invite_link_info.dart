part of '../tdapi.dart';

class ChatInviteLinkInfo extends TdObject {
  int chatId;
  int accessibleFor;
  ChatType type;
  String title;
  ChatPhotoInfo photo;
  int memberCount;
  List<int> memberUserIds;
  bool isPublic;
  dynamic extra;

  /// Contains information about a chat invite link. 
  /// [chatId] Chat identifier of the invite link; 0 if the user have no access to the chat before joining. 
  /// [accessibleFor] If non-zero, the remaining time for which read access is granted to the chat, in seconds. 
  /// [type] Contains information about the type of the chat. 
  /// [title] Title of the chat. 
  /// [photo] Chat photo; may be null. 
  /// [memberCount] Number of members in the chat. 
  /// [memberUserIds] User identifiers of some chat members that may be known to the current user. 
  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  ChatInviteLinkInfo({this.chatId,
    this.accessibleFor,
    this.type,
    this.title,
    this.photo,
    this.memberCount,
    this.memberUserIds,
    this.isPublic});

  /// Parse from a json
  ChatInviteLinkInfo.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.accessibleFor = json['accessible_for'];
    this.type = ChatType.fromJson(json['type'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.photo = ChatPhotoInfo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.memberCount = json['member_count'];
    this.memberUserIds = List<int>.from((json['member_user_ids'] ?? []).map((item) => item).toList());
    this.isPublic = json['is_public'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "accessible_for": this.accessibleFor,
      "type": this.type.toJson(),
      "title": this.title,
      "photo": this.photo.toJson(),
      "member_count": this.memberCount,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
      "is_public": this.isPublic,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}