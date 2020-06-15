part of '../tdapi.dart';

class StopPoll extends TdFunction {
  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  dynamic extra;

  /// Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set. 
  /// [chatId] Identifier of the chat to which the poll belongs. 
  /// [messageId] Identifier of the message containing the poll . 
  /// [replyMarkup] The new message reply markup; for bots only
  StopPoll({this.chatId,
    this.messageId,
    this.replyMarkup});

  /// Parse from a json
  StopPoll.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'stopPoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}