part of '../tdapi.dart';

class AddChatMembers extends TdFunction {
  int chatId;
  List<List<int>> userIds;
  dynamic extra;

  /// Adds multiple new members to a chat. Currently this option is only available for supergroups and channels. This option can't be used to join a chat. Members can't be added to a channel if it has more than 200 members. Members will not be added until the chat state has been synchronized with the server. 
  /// [chatId] Chat identifier. 
  /// [userIds] Identifiers of the users to be added to the chat
  AddChatMembers({this.chatId,
    this.userIds});

  /// Parse from a json
  AddChatMembers.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_ids": this.userIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addChatMembers';
}