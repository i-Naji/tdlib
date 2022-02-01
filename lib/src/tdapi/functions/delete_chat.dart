part of '../tdapi.dart';

class DeleteChat extends TdFunction {

  /// Deletes a chat along with all messages in the corresponding chat for all chat members; requires owner privileges. For group chats this will release the username and remove all members. Chats with more than 1000 members can't be deleted using this method
  const DeleteChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  DeleteChat copyWith({
    int? chatId,
  }) => DeleteChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'deleteChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
