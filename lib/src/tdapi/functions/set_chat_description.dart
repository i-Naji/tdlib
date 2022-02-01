part of '../tdapi.dart';

class SetChatDescription extends TdFunction {

  /// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
  const SetChatDescription({
    required this.chatId,
    required this.description,
  });
  
  /// [chatId] Identifier of the chat 
  final int chatId;

  /// [description] New chat description; 0-255 characters
  final String description;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "description": description,
      "@extra": extra,
    };
  }
  
  SetChatDescription copyWith({
    int? chatId,
    String? description,
  }) => SetChatDescription(
    chatId: chatId ?? this.chatId,
    description: description ?? this.description,
  );

  static const CONSTRUCTOR = 'setChatDescription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
