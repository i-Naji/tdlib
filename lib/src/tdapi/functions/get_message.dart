part of '../tdapi.dart';

class GetMessage extends TdFunction {

  /// Returns information about a message
  const GetMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Identifier of the chat the message belongs to 
  final int chatId;

  /// [messageId] Identifier of the message to get
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
  
  GetMessage copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'getMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
