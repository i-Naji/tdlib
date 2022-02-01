part of '../tdapi.dart';

class GetCallbackQueryMessage extends TdFunction {

  /// Returns information about a message with the callback button that originated a callback query; for bots only
  const GetCallbackQueryMessage({
    required this.chatId,
    required this.messageId,
    required this.callbackQueryId,
  });
  
  /// [chatId] Identifier of the chat the message belongs to 
  final int chatId;

  /// [messageId] Message identifier 
  final int messageId;

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "callback_query_id": callbackQueryId,
      "@extra": extra,
    };
  }
  
  GetCallbackQueryMessage copyWith({
    int? chatId,
    int? messageId,
    int? callbackQueryId,
  }) => GetCallbackQueryMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    callbackQueryId: callbackQueryId ?? this.callbackQueryId,
  );

  static const CONSTRUCTOR = 'getCallbackQueryMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
