part of '../tdapi.dart';

class GetMessage extends TdFunction {
  /// Returns information about a message
  GetMessage({this.chatId, this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message to get
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
