part of '../tdapi.dart';

class ChatInviteLinkInfo extends TdObject {

  /// Contains information about a chat invite link
  const ChatInviteLinkInfo({
    required this.chatId,
    required this.accessibleFor,
    required this.type,
    required this.title,
    this.photo,
    required this.description,
    required this.memberCount,
    required this.memberUserIds,
    required this.createsJoinRequest,
    required this.isPublic,
    this.extra,
    this.clientId,
  });
  
  /// [chatId] Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  final int chatId;

  /// [accessibleFor] If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  final int accessibleFor;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Title of the chat
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [description] Chat description
  final String description;

  /// [memberCount] Number of members in the chat
  final int memberCount;

  /// [memberUserIds] User identifiers of some chat members that may be known to the current user
  final List<int> memberUserIds;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;

  /// [isPublic] True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  final bool isPublic;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) => ChatInviteLinkInfo(
    chatId: json['chat_id'],
    accessibleFor: json['accessible_for'],
    type: ChatType.fromJson(json['type']),
    title: json['title'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    description: json['description'],
    memberCount: json['member_count'],
    memberUserIds: List<int>.from((json['member_user_ids'] ?? []).map((item) => item).toList()),
    createsJoinRequest: json['creates_join_request'],
    isPublic: json['is_public'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "accessible_for": accessibleFor,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "description": description,
      "member_count": memberCount,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
      "creates_join_request": createsJoinRequest,
      "is_public": isPublic,
    };
  }
  
  ChatInviteLinkInfo copyWith({
    int? chatId,
    int? accessibleFor,
    ChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    String? description,
    int? memberCount,
    List<int>? memberUserIds,
    bool? createsJoinRequest,
    bool? isPublic,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinkInfo(
    chatId: chatId ?? this.chatId,
    accessibleFor: accessibleFor ?? this.accessibleFor,
    type: type ?? this.type,
    title: title ?? this.title,
    photo: photo ?? this.photo,
    description: description ?? this.description,
    memberCount: memberCount ?? this.memberCount,
    memberUserIds: memberUserIds ?? this.memberUserIds,
    createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
    isPublic: isPublic ?? this.isPublic,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatInviteLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
