part of '../tdapi.dart';

class SendInlineQueryResultMessage extends TLFunction {
  int chatId;
  int replyToMessageId;
  bool disableNotification;
  bool fromBackground;
  int queryId;
  String resultId;
  bool hideViaBot;
  dynamic extra;

  /// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message.
  ///[chatId] Target chat .
  /// [replyToMessageId] Identifier of a message to reply to or 0.
  /// [disableNotification] Pass true to disable notification for the message. Not supported in secret chats .
  /// [fromBackground] Pass true if the message is sent from background.
  /// [queryId] Identifier of the inline query .
  /// [resultId] Identifier of the inline result.
  /// [hideViaBot] If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
  SendInlineQueryResultMessage(
      {this.chatId,
      this.replyToMessageId,
      this.disableNotification,
      this.fromBackground,
      this.queryId,
      this.resultId,
      this.hideViaBot});

  /// Parse from a json
  SendInlineQueryResultMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_to_message_id": this.replyToMessageId,
      "disable_notification": this.disableNotification,
      "from_background": this.fromBackground,
      "query_id": this.queryId,
      "result_id": this.resultId,
      "hide_via_bot": this.hideViaBot,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendInlineQueryResultMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
