part of '../tdapi.dart';

class BanChatMember extends TdFunction {

  /// Bans a member in a chat. Members can't be banned in private or secret chats. In supergroups and channels, the user will not be able to return to the group on their own using invite links, etc., unless unbanned first
  const BanChatMember({
    required this.chatId,
    required this.memberId,
    required this.bannedUntilDate,
    required this.revokeMessages,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [memberId] Member identifier
  final MessageSender memberId;

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Ignored in basic groups and if a chat is banned
  final int bannedUntilDate;

  /// [revokeMessages] Pass true to delete all messages in the chat for the user that is being removed. Always true for supergroups and channels
  final bool revokeMessages;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "member_id": memberId.toJson(),
      "banned_until_date": bannedUntilDate,
      "revoke_messages": revokeMessages,
      "@extra": extra,
    };
  }
  
  BanChatMember copyWith({
    int? chatId,
    MessageSender? memberId,
    int? bannedUntilDate,
    bool? revokeMessages,
  }) => BanChatMember(
    chatId: chatId ?? this.chatId,
    memberId: memberId ?? this.memberId,
    bannedUntilDate: bannedUntilDate ?? this.bannedUntilDate,
    revokeMessages: revokeMessages ?? this.revokeMessages,
  );

  static const CONSTRUCTOR = 'banChatMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
