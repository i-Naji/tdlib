part of '../tdapi.dart';

class GetChatMember extends TdFunction {

  /// Returns information about a single member of a chat
  const GetChatMember({
    required this.chatId,
    required this.memberId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [memberId] Member identifier
  final MessageSender memberId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "member_id": memberId.toJson(),
      "@extra": extra,
    };
  }
  
  GetChatMember copyWith({
    int? chatId,
    MessageSender? memberId,
  }) => GetChatMember(
    chatId: chatId ?? this.chatId,
    memberId: memberId ?? this.memberId,
  );

  static const CONSTRUCTOR = 'getChatMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
