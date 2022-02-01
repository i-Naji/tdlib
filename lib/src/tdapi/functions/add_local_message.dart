part of '../tdapi.dart';

class AddLocalMessage extends TdFunction {

  /// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
  const AddLocalMessage({
    required this.chatId,
    required this.senderId,
    required this.replyToMessageId,
    required this.disableNotification,
    required this.inputMessageContent,
  });
  
  /// [chatId] Target chat
  final int chatId;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  final int replyToMessageId;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [inputMessageContent] The content of the message to be added
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "sender_id": senderId.toJson(),
      "reply_to_message_id": replyToMessageId,
      "disable_notification": disableNotification,
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }
  
  AddLocalMessage copyWith({
    int? chatId,
    MessageSender? senderId,
    int? replyToMessageId,
    bool? disableNotification,
    InputMessageContent? inputMessageContent,
  }) => AddLocalMessage(
    chatId: chatId ?? this.chatId,
    senderId: senderId ?? this.senderId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    disableNotification: disableNotification ?? this.disableNotification,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const CONSTRUCTOR = 'addLocalMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
