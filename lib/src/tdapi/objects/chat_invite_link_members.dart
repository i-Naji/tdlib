part of '../tdapi.dart';

class ChatInviteLinkMembers extends TdObject {

  /// Contains a list of chat members joined a chat via an invite link
  const ChatInviteLinkMembers({
    required this.totalCount,
    required this.members,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total count of chat members found 
  final int totalCount;

  /// [members] List of chat members, joined a chat via an invite link
  final List<ChatInviteLinkMember> members;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinkMembers.fromJson(Map<String, dynamic> json) => ChatInviteLinkMembers(
    totalCount: json['total_count'],
    members: List<ChatInviteLinkMember>.from((json['members'] ?? []).map((item) => ChatInviteLinkMember.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "members": members.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatInviteLinkMembers copyWith({
    int? totalCount,
    List<ChatInviteLinkMember>? members,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinkMembers(
    totalCount: totalCount ?? this.totalCount,
    members: members ?? this.members,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatInviteLinkMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
