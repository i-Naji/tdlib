part of '../tdapi.dart';

class JoinChatByInviteLink extends TdFunction {

  /// Uses an invite link to add the current user to the chat if possible
  const JoinChatByInviteLink({
    required this.inviteLink,
  });
  
  /// [inviteLink] Invite link to use
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
      "@extra": extra,
    };
  }
  
  JoinChatByInviteLink copyWith({
    String? inviteLink,
  }) => JoinChatByInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const CONSTRUCTOR = 'joinChatByInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
