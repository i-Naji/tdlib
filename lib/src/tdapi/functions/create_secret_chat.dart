part of '../tdapi.dart';

class CreateSecretChat extends TdFunction {
  /// Returns an existing chat corresponding to a known secret chat
  CreateSecretChat({this.secretChatId});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
