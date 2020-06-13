part of '../tdapi.dart';

class MessageLinkInfo extends TdObject {
  bool isPublic;
  int chatId;
  Message message;
  bool forAlbum;
  dynamic extra;

  /// Contains information about a link to a message in a chat. 
  /// [isPublic] True, if the link is a public link for a message in a chat. 
  /// [chatId] If found, identifier of the chat to which the message belongs, 0 otherwise. 
  /// [message] If found, the linked message; may be null. 
  /// [forAlbum] True, if the whole media album to which the message belongs is linked
  MessageLinkInfo({this.isPublic,
    this.chatId,
    this.message,
    this.forAlbum});

  /// Parse from a json
  MessageLinkInfo.fromJson(Map<String, dynamic> json)  {
    this.isPublic = json['is_public'];
    this.chatId = json['chat_id'];
    this.message = Message.fromJson(json['message'] ?? <String, dynamic>{});
    this.forAlbum = json['for_album'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_public": this.isPublic,
      "chat_id": this.chatId,
      "message": this.message.toJson(),
      "for_album": this.forAlbum,
    };
  }

  static const CONSTRUCTOR = 'messageLinkInfo';
}