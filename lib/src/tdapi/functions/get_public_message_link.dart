part of '../tdapi.dart';

class GetPublicMessageLink extends TdFunction {
  int chatId;
  int messageId;
  bool forAlbum;
  dynamic extra;

  /// Returns a public HTTPS link to a message. Available only for messages in supergroups and channels with a username. 
  /// [chatId] Identifier of the chat to which the message belongs. 
  /// [messageId] Identifier of the message. 
  /// [forAlbum] Pass true if a link for a whole media album should be returned
  GetPublicMessageLink({this.chatId,
    this.messageId,
    this.forAlbum});

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
}