part of '../tdapi.dart';

class SetChatMemberStatus extends TdFunction {

  /// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead. Use addChatMember or banChatMember if some additional parameters needs to be passed
  const SetChatMemberStatus({
    required this.chatId,
    required this.memberId,
    required this.status,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier. Chats can be only banned and unbanned in supergroups and channels 
  final MessageSender memberId;

  /// [status] The new status of the member in the chat
  final ChatMemberStatus status;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "member_id": memberId.toJson(),
      "status": status.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatMemberStatus copyWith({
    int? chatId,
    MessageSender? memberId,
    ChatMemberStatus? status,
  }) => SetChatMemberStatus(
    chatId: chatId ?? this.chatId,
    memberId: memberId ?? this.memberId,
    status: status ?? this.status,
  );

  static const CONSTRUCTOR = 'setChatMemberStatus';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
