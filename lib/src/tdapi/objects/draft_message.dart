part of '../tdapi.dart';

class DraftMessage extends TdObject {

  /// Contains information about a message draft
  const DraftMessage({
    required this.replyToMessageId,
    required this.date,
    required this.inputMessageText,
  });
  
  /// [replyToMessageId] Identifier of the message to reply to; 0 if none
  final int replyToMessageId;

  /// [date] Point in time (Unix timestamp) when the draft was created
  final int date;

  /// [inputMessageText] Content of the message draft; must be of the type inputMessageText
  final InputMessageContent inputMessageText;
  
  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
    replyToMessageId: json['reply_to_message_id'] ?? 0,
    date: json['date'],
    inputMessageText: InputMessageContent.fromJson(json['input_message_text']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reply_to_message_id": replyToMessageId,
      "date": date,
      "input_message_text": inputMessageText.toJson(),
    };
  }
  
  DraftMessage copyWith({
    int? replyToMessageId,
    int? date,
    InputMessageContent? inputMessageText,
  }) => DraftMessage(
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    date: date ?? this.date,
    inputMessageText: inputMessageText ?? this.inputMessageText,
  );

  static const CONSTRUCTOR = 'draftMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
