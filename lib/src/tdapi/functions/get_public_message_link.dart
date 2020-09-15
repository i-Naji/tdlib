part of '../tdapi.dart';

class GetPublicMessageLink extends TdFunction {

  /// Returns a public HTTPS link to a message. Available only for messages in supergroups and channels with a username
  GetPublicMessageLink({this.chatId,
    this.messageId,
    this.forAlbum});

  /// [chatId] Identifier of the chat to which the message belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [forAlbum] Pass true if a link for a whole media album should be returned
  bool forAlbum;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPublicMessageLink.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "for_album": this.forAlbum,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPublicMessageLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}