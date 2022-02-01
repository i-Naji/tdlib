part of '../tdapi.dart';

class ProcessChatJoinRequest extends TdFunction {

  /// Handles a pending join request in a chat
  const ProcessChatJoinRequest({
    required this.chatId,
    required this.userId,
    required this.approve,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [userId] Identifier of the user that sent the request 
  final int userId;

  /// [approve] True, if the request is approved. Otherwise the request is declived
  final bool approve;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "user_id": userId,
      "approve": approve,
      "@extra": extra,
    };
  }
  
  ProcessChatJoinRequest copyWith({
    int? chatId,
    int? userId,
    bool? approve,
  }) => ProcessChatJoinRequest(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    approve: approve ?? this.approve,
  );

  static const CONSTRUCTOR = 'processChatJoinRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
