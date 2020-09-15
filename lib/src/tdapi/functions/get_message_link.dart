part of '../tdapi.dart';

class GetMessageLink extends TdFunction {

  /// Returns a private HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. The link will work only for members of the chat
  GetMessageLink({this.chatId,
    this.messageId});

  /// [chatId] Identifier of the chat to which the message belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageLink.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}