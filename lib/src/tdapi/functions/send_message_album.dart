part of '../tdapi.dart';

class SendMessageAlbum extends TdFunction {
  int chatId;
  int replyToMessageId;
  bool disableNotification;
  bool fromBackground;
  List inputMessageContents;
  dynamic extra;

  /// Sends messages grouped together into an album. Currently only photo and video messages can be grouped into an album. Returns sent messages.
  ///[chatId] Target chat .
  /// [replyToMessageId] Identifier of a message to reply to or 0.
  /// [disableNotification] Pass true to disable notification for the messages. Not supported in secret chats .
  /// [fromBackground] Pass true if the messages are sent from the background.
  /// [inputMessageContents] Contents of messages to be sent
  SendMessageAlbum(
      {this.chatId,
      this.replyToMessageId,
      this.disableNotification,
      this.fromBackground,
      this.inputMessageContents});

  /// Parse from a json
  SendMessageAlbum.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_to_message_id": this.replyToMessageId,
      "disable_notification": this.disableNotification,
      "from_background": this.fromBackground,
      "input_message_contents": this
          .inputMessageContents
          .map((listItem) => listItem.toJson())
          .toList(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendMessageAlbum";

  @override
  String getConstructor() => CONSTRUCTOR;
}
