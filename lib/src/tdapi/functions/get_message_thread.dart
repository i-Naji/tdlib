part of '../tdapi.dart';

class GetMessageThread extends TdFunction {

  /// Returns information about a message thread. Can be used only if message.can_get_message_thread == true
  const GetMessageThread({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageId] Identifier of the message
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
  
  GetMessageThread copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageThread(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'getMessageThread';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
