part of '../tdapi.dart';

class GetRepliedMessage extends TdFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Returns information about a message that is replied by given message.
  ///[chatId] Identifier of the chat the message belongs to .
  /// [messageId] Identifier of the message reply to which get
  GetRepliedMessage({this.chatId, this.messageId});

  /// Parse from a json
  GetRepliedMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getRepliedMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
