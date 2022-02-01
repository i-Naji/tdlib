part of '../tdapi.dart';

class SetChatTitle extends TdFunction {

  /// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
  const SetChatTitle({
    required this.chatId,
    required this.title,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [title] New title of the chat; 1-128 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "title": title,
      "@extra": extra,
    };
  }
  
  SetChatTitle copyWith({
    int? chatId,
    String? title,
  }) => SetChatTitle(
    chatId: chatId ?? this.chatId,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'setChatTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
