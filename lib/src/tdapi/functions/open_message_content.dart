part of '../tdapi.dart';

class OpenMessageContent extends TdFunction {

  /// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message). An updateMessageContentOpened update will be generated if something has changed
  const OpenMessageContent({
    required this.chatId,
    required this.messageId,
  });
  
  /// [chatId] Chat identifier of the message 
  final int chatId;

  /// [messageId] Identifier of the message with the opened content
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
  
  OpenMessageContent copyWith({
    int? chatId,
    int? messageId,
  }) => OpenMessageContent(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const CONSTRUCTOR = 'openMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
