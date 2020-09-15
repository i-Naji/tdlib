part of '../tdapi.dart';

class ForwardMessages extends TdFunction {

  /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
  ForwardMessages({this.chatId,
    this.fromChatId,
    this.messageIds,
    this.options,
    this.asAlbum,
    this.sendCopy,
    this.removeCaption});

  /// [chatId] Identifier of the chat to which to forward messages
  int chatId;

  /// [fromChatId] Identifier of the chat from which to forward messages 
  int fromChatId;

  /// [messageIds] Identifiers of the messages to forward
  List<int> messageIds;

  /// [options] Options to be used to send the messages
  MessageSendOptions options;

  /// [asAlbum] True, if the messages should be grouped into an album after forwarding. For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages
  bool asAlbum;

  /// [sendCopy] True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat
  bool sendCopy;

  /// [removeCaption] True, if media captions of message copies needs to be removed. Ignored if send_copy is false
  bool removeCaption;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ForwardMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "from_chat_id": this.fromChatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "options": this.options == null ? null : this.options.toJson(),
      "as_album": this.asAlbum,
      "send_copy": this.sendCopy,
      "remove_caption": this.removeCaption,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'forwardMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}