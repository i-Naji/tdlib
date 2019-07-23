part of '../tdapi.dart';

class DeleteChatMessagesFromUser extends TdFunction {
  int chatId;
  int userId;
  dynamic extra;

  /// Deletes all messages sent by the specified user to a chat. Supported only in supergroups; requires can_delete_messages administrator privileges.
  ///[chatId] Chat identifier .
  /// [userId] User identifier
  DeleteChatMessagesFromUser({this.chatId, this.userId});

  /// Parse from a json
  DeleteChatMessagesFromUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "deleteChatMessagesFromUser";

  @override
  String getConstructor() => CONSTRUCTOR;
}
