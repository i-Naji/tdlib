part of '../tdapi.dart';

class GetChatScheduledMessages extends TdFunction {
  /// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  GetChatScheduledMessages({this.chatId});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatScheduledMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatScheduledMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
