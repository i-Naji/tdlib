part of '../tdapi.dart';

class RecognizeSpeech extends TdFunction {
  /// Recognizes speech in a video note or a voice note message. The message must be successfully sent and must not be scheduled. May return an error with a message "MSG_VOICE_TOO_LONG" if media duration is too big to be recognized
  const RecognizeSpeech({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat to which the message belongs
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

  RecognizeSpeech copyWith({
    int? chatId,
    int? messageId,
  }) =>
      RecognizeSpeech(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

  static const CONSTRUCTOR = 'recognizeSpeech';

  @override
  String getConstructor() => CONSTRUCTOR;
}
