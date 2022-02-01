part of '../tdapi.dart';

class ReplacePrimaryChatInviteLink extends TdFunction {

  /// Replaces current primary invite link for a chat with a new primary invite link. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
  const ReplacePrimaryChatInviteLink({
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
  
  ReplacePrimaryChatInviteLink copyWith({
    int? chatId,
  }) => ReplacePrimaryChatInviteLink(
    chatId: chatId ?? this.chatId,
  );

  static const CONSTRUCTOR = 'replacePrimaryChatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
