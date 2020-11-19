part of '../tdapi.dart';

class ReportChat extends TdFunction {
  /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if this is a private chats with a bot, a private chat with a user sharing their location, a supergroup, or a channel, since other chats can't be checked by moderators
  ReportChat({this.chatId, this.reason, this.messageIds});

  /// [chatId] Chat identifier
  int chatId;

  /// [reason] The reason for reporting the chat
  ChatReportReason reason;

  /// [messageIds] Identifiers of reported messages, if any
  List<int> messageIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ReportChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reason": this.reason == null ? null : this.reason.toJson(),
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reportChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
