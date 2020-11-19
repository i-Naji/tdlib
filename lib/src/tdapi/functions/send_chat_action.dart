part of '../tdapi.dart';

class SendChatAction extends TdFunction {
  /// Sends a notification about user activity in a chat
  SendChatAction({this.chatId, this.messageThreadId, this.action});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the action was performed
  int messageThreadId;

  /// [action] The action description
  ChatAction action;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendChatAction.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_thread_id": this.messageThreadId,
      "action": this.action == null ? null : this.action.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendChatAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
