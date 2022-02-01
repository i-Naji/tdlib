part of '../tdapi.dart';

class ChatMembers extends TdObject {

  /// Contains a list of chat members
  const ChatMembers({
    required this.totalCount,
    required this.members,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total count of chat members found 
  final int totalCount;

  /// [members] A list of chat members
  final List<ChatMember> members;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatMembers.fromJson(Map<String, dynamic> json) => ChatMembers(
    totalCount: json['total_count'],
    members: List<ChatMember>.from((json['members'] ?? []).map((item) => ChatMember.fromJson(item)).toList()),
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
  
  ChatMembers copyWith({
    int? totalCount,
    List<ChatMember>? members,
    dynamic extra,
    int? clientId,
  }) => ChatMembers(
    totalCount: totalCount ?? this.totalCount,
    members: members ?? this.members,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
