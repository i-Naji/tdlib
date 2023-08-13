part of '../tdapi.dart';

class AddLocalMessage extends TdFunction {
  /// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
  const AddLocalMessage({
    required this.chatId,
    required this.senderId,
    this.replyTo,
    required this.disableNotification,
    required this.inputMessageContent,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [replyTo] Identifier of the replied message or story; pass null if none
  final MessageReplyTo? replyTo;

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
      "reply_to": replyTo?.toJson(),
      "disable_notification": disableNotification,
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
    };
  }

  AddLocalMessage copyWith({
    int? chatId,
    MessageSender? senderId,
    MessageReplyTo? replyTo,
    bool? disableNotification,
    InputMessageContent? inputMessageContent,
  }) =>
      AddLocalMessage(
        chatId: chatId ?? this.chatId,
        senderId: senderId ?? this.senderId,
        replyTo: replyTo ?? this.replyTo,
        disableNotification: disableNotification ?? this.disableNotification,
        inputMessageContent: inputMessageContent ?? this.inputMessageContent,
      );

  static const CONSTRUCTOR = 'addLocalMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
