part of '../tdapi.dart';

class DeleteChatMessagesBySender extends TdFunction {

  /// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
  const DeleteChatMessagesBySender({
    required this.chatId,
    required this.senderId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [senderId] Identifier of the sender of messages to delete
  final MessageSender senderId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "sender_id": senderId.toJson(),
      "@extra": extra,
    };
  }
  
  DeleteChatMessagesBySender copyWith({
    int? chatId,
    MessageSender? senderId,
  }) => DeleteChatMessagesBySender(
    chatId: chatId ?? this.chatId,
    senderId: senderId ?? this.senderId,
  );

  static const CONSTRUCTOR = 'deleteChatMessagesBySender';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
