part of '../tdapi.dart';

class GetMessageLink extends TdFunction {
  /// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. This is an offline request
  GetMessageLink({this.chatId, this.messageId, this.forAlbum, this.forComment});

  /// [chatId] Identifier of the chat to which the message belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [forAlbum] Pass true to create a link for the whole media album
  bool forAlbum;

  /// [forComment] Pass true to create a link to the message as a channel post comment, or from a message thread
  bool forComment;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "for_album": this.forAlbum,
      "for_comment": this.forComment,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
