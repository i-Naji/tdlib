part of '../tdapi.dart';

class BasicGroupFullInfo extends TdObject {

  /// Contains full information about a basic group
  const BasicGroupFullInfo({
    this.photo,
    required this.description,
    required this.creatorUserId,
    required this.members,
    this.inviteLink,
    required this.botCommands,
    this.extra,
    this.clientId,
  });
  
  /// [photo] Chat photo; may be null
  final ChatPhoto? photo;

  /// [description] Group description. Updated only after the basic group is opened
  final String description;

  /// [creatorUserId] User identifier of the creator of the group; 0 if unknown
  final int creatorUserId;

  /// [members] Group members
  final List<ChatMember> members;

  /// [inviteLink] Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened
  final ChatInviteLink? inviteLink;

  /// [botCommands] List of commands of bots in the group
  final List<BotCommands> botCommands;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BasicGroupFullInfo.fromJson(Map<String, dynamic> json) => BasicGroupFullInfo(
    photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
    description: json['description'],
    creatorUserId: json['creator_user_id'],
    members: List<ChatMember>.from((json['members'] ?? []).map((item) => ChatMember.fromJson(item)).toList()),
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    botCommands: List<BotCommands>.from((json['bot_commands'] ?? []).map((item) => BotCommands.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "description": description,
      "creator_user_id": creatorUserId,
      "members": members.map((i) => i.toJson()).toList(),
      "invite_link": inviteLink?.toJson(),
      "bot_commands": botCommands.map((i) => i.toJson()).toList(),
    };
  }
  
  BasicGroupFullInfo copyWith({
    ChatPhoto? photo,
    String? description,
    int? creatorUserId,
    List<ChatMember>? members,
    ChatInviteLink? inviteLink,
    List<BotCommands>? botCommands,
    dynamic extra,
    int? clientId,
  }) => BasicGroupFullInfo(
    photo: photo ?? this.photo,
    description: description ?? this.description,
    creatorUserId: creatorUserId ?? this.creatorUserId,
    members: members ?? this.members,
    inviteLink: inviteLink ?? this.inviteLink,
    botCommands: botCommands ?? this.botCommands,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'basicGroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
