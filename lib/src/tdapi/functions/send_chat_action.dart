part of '../tdapi.dart';

class SendChatAction extends TdFunction {

  /// Sends a notification about user activity in a chat
  const SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    this.action,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the action was performed 
  final int messageThreadId;

  /// [action] The action description; pass null to cancel the currently active action
  final ChatAction? action;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "action": action?.toJson(),
      "@extra": extra,
    };
  }
  
  SendChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    ChatAction? action,
  }) => SendChatAction(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    action: action ?? this.action,
  );

  static const CONSTRUCTOR = 'sendChatAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
