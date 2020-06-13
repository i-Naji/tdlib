part of '../tdapi.dart';

class ForwardMessages extends TdFunction {
  int chatId;
  int fromChatId;
  List<List<int>> messageIds;
  SendMessageOptions options;
  bool asAlbum;
  bool sendCopy;
  bool removeCaption;
  dynamic extra;

  /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message. 
  /// [chatId] Identifier of the chat to which to forward messages. 
  /// [fromChatId] Identifier of the chat from which to forward messages . 
  /// [messageIds] Identifiers of the messages to forward. 
  /// [options] Options to be used to send the messages. 
  /// [asAlbum] True, if the messages should be grouped into an album after forwarding. For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages. 
  /// [sendCopy] True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat. 
  /// [removeCaption] True, if media captions of message copies needs to be removed. Ignored if send_copy is false
  ForwardMessages({this.chatId,
    this.fromChatId,
    this.messageIds,
    this.options,
    this.asAlbum,
    this.sendCopy,
    this.removeCaption});

  /// Parse from a json
  ForwardMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "from_chat_id": this.fromChatId,
      "message_ids": this.messageIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "options": this.options.toJson(),
      "as_album": this.asAlbum,
      "send_copy": this.sendCopy,
      "remove_caption": this.removeCaption,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'forwardMessages';
}