part of '../tdapi.dart';

class MessageLinkInfo extends TdObject {
  /// Contains information about a link to a message in a chat
  MessageLinkInfo(
      {this.isPublic,
      this.chatId,
      this.message,
      this.forAlbum,
      this.forComment});

  /// [isPublic] True, if the link is a public link for a message in a chat
  bool isPublic;

  /// [chatId] If found, identifier of the chat to which the message belongs, 0 otherwise
  int chatId;

  /// [message] If found, the linked message; may be null
  Message message;

  /// [forAlbum] True, if the whole media album to which the message belongs is linked
  bool forAlbum;

  /// [forComment] True, if the message is linked as a channel post comment or from a message thread
  bool forComment;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  MessageLinkInfo.fromJson(Map<String, dynamic> json) {
    this.isPublic = json['is_public'];
    this.chatId = json['chat_id'];
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.forAlbum = json['for_album'];
    this.forComment = json['for_comment'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_public": this.isPublic,
      "chat_id": this.chatId,
      "message": this.message == null ? null : this.message.toJson(),
      "for_album": this.forAlbum,
      "for_comment": this.forComment,
    };
  }

  static const CONSTRUCTOR = 'messageLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
