part of '../tdapi.dart';

class GetMessage extends TdFunction {
  /// Returns information about a message
  GetMessage({required this.chatId, required this.messageId, this.extra});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message to get
  int messageId;

  /// callback sign
  dynamic? extra;

  /// Parse from a json
  factory GetMessage.fromJson(Map<String, dynamic> json) {
    return GetMessage(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      extra: json['@extra'],
    );
  }

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
