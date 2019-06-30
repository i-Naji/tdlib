part of '../tdapi.dart';

class DraftMessage implements TLObject {
  int replyToMessageId;
  var inputMessageText;

  /// Contains information about a message draft.
  ///[replyToMessageId] Identifier of the message to reply to; 0 if none .
  /// [inputMessageText] Content of the message draft; this should always be of type inputMessageText
  DraftMessage({this.replyToMessageId, this.inputMessageText});

  /// Parse from a json
  DraftMessage.fromJson(Map<String, dynamic> json) {
    this.replyToMessageId = json['reply_to_message_id'];
    this.inputMessageText = InputMessageContent.fromJson(
        json['input_message_text'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'reply_to_message_id': this.replyToMessageId,
      'input_message_text': this.inputMessageText.toJson()
    };
  }

  static const String CONSTRUCTOR = 'draftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
