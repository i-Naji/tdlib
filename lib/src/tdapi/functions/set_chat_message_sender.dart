part of '../tdapi.dart';

class SetChatMessageSender extends TdFunction {

  /// Selects a message sender to send messages in a chat
  const SetChatMessageSender({
    required this.chatId,
    required this.messageSenderId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageSenderId] New message sender for the chat
  final MessageSender messageSenderId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_sender_id": messageSenderId.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatMessageSender copyWith({
    int? chatId,
    MessageSender? messageSenderId,
  }) => SetChatMessageSender(
    chatId: chatId ?? this.chatId,
    messageSenderId: messageSenderId ?? this.messageSenderId,
  );

  static const CONSTRUCTOR = 'setChatMessageSender';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
