part of '../tdapi.dart';

class CreateSecretChat extends TLFunction {
  int secretChatId;
  dynamic extra;

  /// Returns an existing chat corresponding to a known secret chat.
  ///[secretChatId] Secret chat identifier
  CreateSecretChat({this.secretChatId});

  /// Parse from a json
  CreateSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "createSecretChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
