part of '../tdapi.dart';

class DraftMessage extends TdObject {
  /// Contains information about a message draft
  DraftMessage({this.replyToMessageId, this.date, this.inputMessageText});

  /// [replyToMessageId] Identifier of the message to reply to; 0 if none
  int replyToMessageId;

  /// [date] Point in time (Unix timestamp) when the draft was created
  int date;

  /// [inputMessageText] Content of the message draft; this should always be of type inputMessageText
  InputMessageContent inputMessageText;

  /// Parse from a json
  DraftMessage.fromJson(Map<String, dynamic> json) {
    this.replyToMessageId = json['reply_to_message_id'];
    this.date = json['date'];
    this.inputMessageText = InputMessageContent.fromJson(
        json['input_message_text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reply_to_message_id": this.replyToMessageId,
      "date": this.date,
      "input_message_text":
          this.inputMessageText == null ? null : this.inputMessageText.toJson(),
    };
  }

  static const CONSTRUCTOR = 'draftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
