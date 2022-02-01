part of '../tdapi.dart';

class GetCallbackQueryAnswer extends TdFunction {

  /// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
  const GetCallbackQueryAnswer({
    required this.chatId,
    required this.messageId,
    required this.payload,
  });
  
  /// [chatId] Identifier of the chat with the message 
  final int chatId;

  /// [messageId] Identifier of the message from which the query originated 
  final int messageId;

  /// [payload] Query payload
  final CallbackQueryPayload payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "payload": payload.toJson(),
      "@extra": extra,
    };
  }
  
  GetCallbackQueryAnswer copyWith({
    int? chatId,
    int? messageId,
    CallbackQueryPayload? payload,
  }) => GetCallbackQueryAnswer(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    payload: payload ?? this.payload,
  );

  static const CONSTRUCTOR = 'getCallbackQueryAnswer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
