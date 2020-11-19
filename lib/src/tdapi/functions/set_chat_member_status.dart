part of '../tdapi.dart';

class SetChatMemberStatus extends TdFunction {
  /// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat and transferring chat ownership; instead, use addChatMember or transferChatOwnership. The chat member status will not be changed until it has been synchronized with the server
  SetChatMemberStatus({this.chatId, this.userId, this.status});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] User identifier
  int userId;

  /// [status] The new status of the member in the chat
  ChatMemberStatus status;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetChatMemberStatus.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "status": this.status == null ? null : this.status.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
