part of '../tdapi.dart';

class CreateSecretChat extends TdFunction {

  /// Returns an existing chat corresponding to a known secret chat
  const CreateSecretChat({
    required this.secretChatId,
  });
  
  /// [secretChatId] Secret chat identifier
  final int secretChatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": secretChatId,
      "@extra": extra,
    };
  }
  
  CreateSecretChat copyWith({
    int? secretChatId,
  }) => CreateSecretChat(
    secretChatId: secretChatId ?? this.secretChatId,
  );

  static const CONSTRUCTOR = 'createSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
