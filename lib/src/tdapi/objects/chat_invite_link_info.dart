part of '../tdapi.dart';

class ChatInviteLinkInfo extends TdObject {
  int chatId;
  ChatType type;
  String title;
  ChatPhoto photo;
  int memberCount;
  List<List<int>> memberUserIds;
  bool isPublic;
  dynamic extra;

  /// Contains information about a chat invite link. 
  /// [chatId] Chat identifier of the invite link; 0 if the user is not a member of this chat. 
  /// [type] Contains information about the type of the chat. 
  /// [title] Title of the chat. 
  /// [photo] Chat photo; may be null. 
  /// [memberCount] Number of members in the chat. 
  /// [memberUserIds] User identifiers of some chat members that may be known to the current user. 
  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  ChatInviteLinkInfo({this.chatId,
    this.type,
    this.title,
    this.photo,
    this.memberCount,
    this.memberUserIds,
    this.isPublic});

  /// Parse from a json
  ChatInviteLinkInfo.fromJson(Map<String, dynamic> json)  {
    this.chatId = json['chat_id'];
    this.type = ChatType.fromJson(json['type'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
    this.memberCount = json['member_count'];
    this.memberUserIds = List<List<int>>.from((json['member_user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.isPublic = json['is_public'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "type": this.type.toJson(),
      "title": this.title,
      "photo": this.photo.toJson(),
      "member_count": this.memberCount,
      "member_user_ids": this.memberUserIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "is_public": this.isPublic,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLinkInfo';
}