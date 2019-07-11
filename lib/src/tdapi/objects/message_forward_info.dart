part of '../tdapi.dart';

class MessageForwardInfo implements TLObject {
  var origin;
  int date;
  int fromChatId;
  int fromMessageId;

  /// Contains information about a forwarded message.
  ///[origin] Origin of a forwarded message.
  /// [date] Point in time (Unix timestamp) when the message was originally sent.
  /// [fromChatId] For messages forwarded to the chat with the current user (saved messages), the identifier of the chat from which the message was forwarded last time; 0 if unknown.
  /// [fromMessageId] For messages forwarded to the chat with the current user (saved messages), the identifier of the original message from which the new message was forwarded last time; 0 if unknown
  MessageForwardInfo(
      {this.origin, this.date, this.fromChatId, this.fromMessageId});

  /// Parse from a json
  MessageForwardInfo.fromJson(Map<String, dynamic> json) {
    this.origin =
        MessageForwardOrigin.fromJson(json['origin'] ?? <String, dynamic>{});
    this.date = json['date'];
    this.fromChatId = json['from_chat_id'];
    this.fromMessageId = json['from_message_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "origin": this.origin.toJson(),
      "date": this.date,
      "from_chat_id": this.fromChatId,
      "from_message_id": this.fromMessageId
    };
  }

  static const String CONSTRUCTOR = "messageForwardInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
