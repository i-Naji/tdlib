part of '../tdapi.dart';

class GetSecretChat extends TLFunction {
  int secretChatId;
  dynamic extra;

  /// Returns information about a secret chat by its identifier. This is an offline request.
  ///[secretChatId] Secret chat identifier
  GetSecretChat({this.secretChatId});

  /// Parse from a json
  GetSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getSecretChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
