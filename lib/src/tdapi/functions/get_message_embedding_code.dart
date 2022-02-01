part of '../tdapi.dart';

class GetMessageEmbeddingCode extends TdFunction {

  /// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
  const GetMessageEmbeddingCode({
    required this.chatId,
    required this.messageId,
    required this.forAlbum,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole media album
  final bool forAlbum;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "for_album": forAlbum,
      "@extra": extra,
    };
  }
  
  GetMessageEmbeddingCode copyWith({
    int? chatId,
    int? messageId,
    bool? forAlbum,
  }) => GetMessageEmbeddingCode(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    forAlbum: forAlbum ?? this.forAlbum,
  );

  static const CONSTRUCTOR = 'getMessageEmbeddingCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
