part of '../tdapi.dart';

class ForwardMessages extends TdFunction {
  int chatId;
  int fromChatId;
  List<int> messageIds;
  bool disableNotification;
  bool fromBackground;
  bool asAlbum;
  dynamic extra;

  /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message.
  ///[chatId] Identifier of the chat to which to forward messages .
  /// [fromChatId] Identifier of the chat from which to forward messages .
  /// [messageIds] Identifiers of the messages to forward.
  /// [disableNotification] Pass true to disable notification for the message, doesn't work if messages are forwarded to a secret chat .
  /// [fromBackground] Pass true if the message is sent from the background.
  /// [asAlbum] True, if the messages should be grouped into an album after forwarding. For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages
  ForwardMessages(
      {this.chatId,
      this.fromChatId,
      this.messageIds,
      this.disableNotification,
      this.fromBackground,
      this.asAlbum});

  /// Parse from a json
  ForwardMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "from_chat_id": this.fromChatId,
      "message_ids": this.messageIds,
      "disable_notification": this.disableNotification,
      "from_background": this.fromBackground,
      "as_album": this.asAlbum,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "forwardMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
