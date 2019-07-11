part of '../tdapi.dart';

class CloseSecretChat extends TLFunction {
  int secretChatId;
  dynamic extra;

  /// Closes a secret chat, effectively transfering its state to secretChatStateClosed.
  ///[secretChatId] Secret chat identifier
  CloseSecretChat({this.secretChatId});

  /// Parse from a json
  CloseSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "closeSecretChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
