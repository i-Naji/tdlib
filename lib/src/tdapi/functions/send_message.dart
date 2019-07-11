part of '../tdapi.dart';

class SendMessage extends TLFunction {
  int chatId;
  int replyToMessageId;
  bool disableNotification;
  bool fromBackground;
  var replyMarkup;
  var inputMessageContent;
  dynamic extra;

  /// Sends a message. Returns the sent message.
  ///[chatId] Target chat .
  /// [replyToMessageId] Identifier of the message to reply to or 0.
  /// [disableNotification] Pass true to disable notification for the message. Not supported in secret chats .
  /// [fromBackground] Pass true if the message is sent from the background.
  /// [replyMarkup] Markup for replying to the message; for bots only .
  /// [inputMessageContent] The content of the message to be sent
  SendMessage(
      {this.chatId,
      this.replyToMessageId,
      this.disableNotification,
      this.fromBackground,
      this.replyMarkup,
      this.inputMessageContent});

  /// Parse from a json
  SendMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_to_message_id": this.replyToMessageId,
      "disable_notification": this.disableNotification,
      "from_background": this.fromBackground,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
