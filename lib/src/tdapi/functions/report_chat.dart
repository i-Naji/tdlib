part of '../tdapi.dart';

class ReportChat extends TLFunction {
  int chatId;
  var reason;
  List<int> messageIds;
  dynamic extra;

  /// Reports a chat to the Telegram moderators. Supported only for supergroups, channels, or private chats with bots, since other chats can't be checked by moderators.
  ///[chatId] Chat identifier .
  /// [reason] The reason for reporting the chat .
  /// [messageIds] Identifiers of reported messages, if any
  ReportChat({this.chatId, this.reason, this.messageIds});

  /// Parse from a json
  ReportChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'reason': this.reason.toJson(),
      'message_ids': this.messageIds,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'reportChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
