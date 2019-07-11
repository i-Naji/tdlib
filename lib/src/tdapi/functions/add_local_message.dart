part of '../tdapi.dart';

class AddLocalMessage extends TLFunction {
  int chatId;
  int senderUserId;
  int replyToMessageId;
  bool disableNotification;
  var inputMessageContent;
  dynamic extra;

  /// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message.
  ///[chatId] Target chat .
  /// [senderUserId] Identifier of the user who will be shown as the sender of the message; may be 0 for channel posts.
  /// [replyToMessageId] Identifier of the message to reply to or 0 .
  /// [disableNotification] Pass true to disable notification for the message .
  /// [inputMessageContent] The content of the message to be added
  AddLocalMessage(
      {this.chatId,
      this.senderUserId,
      this.replyToMessageId,
      this.disableNotification,
      this.inputMessageContent});

  /// Parse from a json
  AddLocalMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "sender_user_id": this.senderUserId,
      "reply_to_message_id": this.replyToMessageId,
      "disable_notification": this.disableNotification,
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "addLocalMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
