part of '../tdapi.dart';

class LeaveChat extends TdFunction {

  /// Removes the current user from chat members. Private and secret chats can't be left using this method
  const LeaveChat({
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
  
  LeaveChat copyWith({
    int? chatId,
  }) => LeaveChat(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'leaveChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
