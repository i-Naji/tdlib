part of '../tdapi.dart';

class ChatMembers extends TdObject {
  int totalCount;
  List<List<ChatMember>> members;
  dynamic extra;

  /// Contains a list of chat members. 
  /// [totalCount] Approximate total count of chat members found . 
  /// [members] A list of chat members
  ChatMembers({this.totalCount,
    this.members});

  /// Parse from a json
  ChatMembers.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.members = List<List<ChatMember>>.from((json['members'] ?? []).map((item) => List<ChatMember>.from((item ?? []).map((innerItem) => ChatMember.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "members": this.members.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatMembers';
}