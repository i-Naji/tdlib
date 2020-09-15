part of '../tdapi.dart';

class SendMessageAlbum extends TdFunction {
  int chatId;
  int replyToMessageId;
  SendMessageOptions options;
  List<InputMessageContent> inputMessageContents;
  dynamic extra;

  /// Sends messages grouped together into an album. Currently only photo and video messages can be grouped into an album. Returns sent messages. 
  /// [chatId] Target chat. 
  /// [replyToMessageId] Identifier of a message to reply to or 0. 
  /// [options] Options to be used to send the messages. 
  /// [inputMessageContents] Contents of messages to be sent
  SendMessageAlbum({this.chatId,
    this.replyToMessageId,
    this.options,
    this.inputMessageContents});

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