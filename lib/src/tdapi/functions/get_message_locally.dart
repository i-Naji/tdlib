part of '../tdapi.dart';

class GetMessageLocally extends TdFunction {
  /// Returns information about a message, if it is available locally without sending network request. This is an offline request
  GetMessageLocally({this.chatId, this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message to get
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageLocally.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLocally';

  @override
  String getConstructor() => CONSTRUCTOR;
}
