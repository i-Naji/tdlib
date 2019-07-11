part of '../tdapi.dart';

class SendChatSetTtlMessage extends TLFunction {
  int chatId;
  int ttl;
  dynamic extra;

  /// Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding message.
  ///[chatId] Chat identifier .
  /// [ttl] New TTL value, in seconds
  SendChatSetTtlMessage({this.chatId, this.ttl});

  /// Parse from a json
  SendChatSetTtlMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "ttl": this.ttl,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendChatSetTtlMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
