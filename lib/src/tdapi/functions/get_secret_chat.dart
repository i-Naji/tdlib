part of '../tdapi.dart';

class GetSecretChat extends TdFunction {

  /// Returns information about a secret chat by its identifier. This is an offline request
  const GetSecretChat({
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
  
  GetSecretChat copyWith({
    int? secretChatId,
  }) => GetSecretChat(
    secretChatId: secretChatId ?? this.secretChatId,
  );

  static const CONSTRUCTOR = 'getSecretChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
