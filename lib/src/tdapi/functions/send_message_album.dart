part of '../tdapi.dart';

class SendMessageAlbum extends TdFunction {

  /// Sends messages grouped together into an album. Currently only photo and video messages can be grouped into an album. Returns sent messages
  SendMessageAlbum({this.chatId,
    this.replyToMessageId,
    this.options,
    this.inputMessageContents});

  /// [chatId] Target chat
  int chatId;

  /// [replyToMessageId] Identifier of a message to reply to or 0
  int replyToMessageId;

  /// [options] Options to be used to send the messages
  MessageSendOptions options;

  /// [inputMessageContents] Contents of messages to be sent
  List<InputMessageContent> inputMessageContents;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendMessageAlbum.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "reply_to_message_id": this.replyToMessageId,
      "options": this.options == null ? null : this.options.toJson(),
      "input_message_contents": this.inputMessageContents.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendMessageAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}