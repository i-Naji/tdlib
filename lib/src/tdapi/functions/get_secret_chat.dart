part of '../tdapi.dart';

class GetSecretChat extends TdFunction {
  /// Returns information about a secret chat by its identifier. This is an offline request
  GetSecretChat({this.secretChatId});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
