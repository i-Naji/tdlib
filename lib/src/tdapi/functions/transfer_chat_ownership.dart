part of '../tdapi.dart';

class TransferChatOwnership extends TdFunction {
  int chatId;
  int userId;
  String password;
  dynamic extra;

  /// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats. 
  /// [chatId] Chat identifier. 
  /// [userId] Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user . 
  /// [password] The password of the current user
  TransferChatOwnership({this.chatId,
    this.userId,
    this.password});

  /// Parse from a json
  TransferChatOwnership.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'transferChatOwnership';
}