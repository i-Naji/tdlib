part of '../tdapi.dart';

class GetRepliedMessage extends TdFunction {
  /// Returns information about a message that is replied by a given message. Also returns the pinned message, the game message, and the invoice message for messages of the types messagePinMessage, messageGameScore, and messagePaymentSuccessful respectively
  GetRepliedMessage({this.chatId, this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message reply to which to get
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetRepliedMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRepliedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
