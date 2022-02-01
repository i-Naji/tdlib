part of '../tdapi.dart';

class GetRepliedMessage extends TdFunction {

  /// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the reply message
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
    };
  }
  
  GetRepliedMessage copyWith({
    int? chatId,
    int? messageId,
  }) => GetRepliedMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'getRepliedMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
