part of '../tdapi.dart';

class RateSpeechRecognition extends TdFunction {
  /// Rates recognized speech in a video note or a voice note message
  const RateSpeechRecognition({
    required this.chatId,
    required this.messageId,
    required this.isGood,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [isGood] Pass true if the speech recognition is good
  final bool isGood;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "is_good": isGood,
      "@extra": extra,
    };
  }

  RateSpeechRecognition copyWith({
    int? chatId,
    int? messageId,
    bool? isGood,
  }) =>
      RateSpeechRecognition(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
        isGood: isGood ?? this.isGood,
      );

  static const CONSTRUCTOR = 'rateSpeechRecognition';

  @override
  String getConstructor() => CONSTRUCTOR;
}
