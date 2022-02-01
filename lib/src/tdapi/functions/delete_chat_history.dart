part of '../tdapi.dart';

class DeleteChatHistory extends TdFunction {

  /// Deletes all messages in the chat. Use chat.can_be_deleted_only_for_self and chat.can_be_deleted_for_all_users fields to find whether and how the method can be applied to the chat
  const DeleteChatHistory({
    required this.chatId,
    required this.removeFromChatList,
    required this.revoke,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [removeFromChatList] Pass true if the chat needs to be removed from the chat list 
  final bool removeFromChatList;

  /// [revoke] Pass true to delete chat history for all users
  final bool revoke;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "remove_from_chat_list": removeFromChatList,
      "revoke": revoke,
      "@extra": extra,
    };
  }
  
  DeleteChatHistory copyWith({
    int? chatId,
    bool? removeFromChatList,
    bool? revoke,
  }) => DeleteChatHistory(
    chatId: chatId ?? this.chatId,
    removeFromChatList: removeFromChatList ?? this.removeFromChatList,
    revoke: revoke ?? this.revoke,
  );

  static const CONSTRUCTOR = 'deleteChatHistory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
