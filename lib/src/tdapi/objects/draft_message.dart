part of '../tdapi.dart';

class DraftMessage extends TdObject {
  int replyToMessageId;
  int date;
  InputMessageContent inputMessageText;

  /// Contains information about a message draft. 
  /// [replyToMessageId] Identifier of the message to reply to; 0 if none. 
  /// [date] Point in time (Unix timestamp) when the draft was created. 
  /// [inputMessageText] Content of the message draft; this should always be of type inputMessageText
  DraftMessage({this.replyToMessageId,
    this.date,
    this.inputMessageText});

  /// Parse from a json
  DraftMessage.fromJson(Map<String, dynamic> json)  {
    this.replyToMessageId = json['reply_to_message_id'];
    this.date = json['date'];
    this.inputMessageText = InputMessageContent.fromJson(json['input_message_text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reply_to_message_id": this.replyToMessageId,
      "date": this.date,
      "input_message_text": this.inputMessageText.toJson(),
    };
  }

  static const CONSTRUCTOR = 'draftMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}