part of '../tdapi.dart';

class SendChatSetTtlMessage extends TdFunction {
  /// Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding message
  SendChatSetTtlMessage({this.chatId, this.ttl});

  /// [chatId] Chat identifier
  int chatId;

  /// [ttl] New TTL value, in seconds
  int ttl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendChatSetTtlMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "ttl": this.ttl,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendChatSetTtlMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
