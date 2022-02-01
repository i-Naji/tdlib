part of '../tdapi.dart';

class GetChat extends TdFunction {

  /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot
  const GetChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChat copyWith({
    int? chatId,
  }) => GetChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'getChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
