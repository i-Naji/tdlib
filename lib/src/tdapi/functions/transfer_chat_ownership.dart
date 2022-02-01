part of '../tdapi.dart';

class TransferChatOwnership extends TdFunction {

  /// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats
  const TransferChatOwnership({
    required this.chatId,
    required this.userId,
    required this.password,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user 
  final int userId;

  /// [password] The password of the current user
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "user_id": userId,
      "password": password,
      "@extra": extra,
    };
  }
  
  TransferChatOwnership copyWith({
    int? chatId,
    int? userId,
    String? password,
  }) => TransferChatOwnership(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    password: password ?? this.password,
  );

  static const CONSTRUCTOR = 'transferChatOwnership';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
