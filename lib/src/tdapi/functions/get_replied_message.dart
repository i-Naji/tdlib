part of '../tdapi.dart';

class GetRepliedMessage extends TdFunction {

  /// Returns information about a message that is replied by given message
  GetRepliedMessage({this.chatId,
    this.messageId});

  /// [chatId] Identifier of the chat the message belongs to 
  int chatId;

  /// [messageId] Identifier of the message reply to which get
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetRepliedMessage.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRepliedMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}