part of '../tdapi.dart';

class ChatMembers implements TLObject {
  int totalCount;
  List<ChatMember> members;
  dynamic extra;

  /// Contains a list of chat members.
  ///[totalCount] Approximate total count of chat members found .
  /// [members] A list of chat members
  ChatMembers({this.totalCount, this.members});

  /// Parse from a json
  ChatMembers.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.members = List<ChatMember>.from((json['members'] ?? [])
        .map((listValue) => ChatMember.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "members": this.members.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "chatMembers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
