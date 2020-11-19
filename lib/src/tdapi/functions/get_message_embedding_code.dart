part of '../tdapi.dart';

class GetMessageEmbeddingCode extends TdFunction {
  /// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
  GetMessageEmbeddingCode({this.chatId, this.messageId, this.forAlbum});

  /// [chatId] Identifier of the chat to which the message belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole media album
  bool forAlbum;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageEmbeddingCode.fromJson(Map<String, dynamic> json);

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

  static const CONSTRUCTOR = 'getMessageEmbeddingCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
