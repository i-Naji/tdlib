part of '../tdapi.dart';

class ResendMessages extends TdFunction {
  int chatId;
  List<List<int>> messageIds;
  dynamic extra;

  /// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed.. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message. 
  /// [chatId] Identifier of the chat to send messages. 
  /// [messageIds] Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
  ResendMessages({this.chatId,
    this.messageIds});

  /// Parse from a json
  ResendMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendMessages';
}