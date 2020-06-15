part of '../tdapi.dart';

class GetMessages extends TdFunction {
  int chatId;
  List<int> messageIds;
  dynamic extra;

  /// Returns information about messages. If a message is not found, returns null on the corresponding position of the result. 
  /// [chatId] Identifier of the chat the messages belong to . 
  /// [messageIds] Identifiers of the messages to get
  GetMessages({this.chatId,
    this.messageIds});

  /// Parse from a json
  GetMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}