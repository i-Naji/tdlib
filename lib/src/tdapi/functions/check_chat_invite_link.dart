part of '../tdapi.dart';

class CheckChatInviteLink extends TdFunction {

  /// Checks the validity of an invite link for a chat and returns information about the corresponding chat
  const CheckChatInviteLink({
    required this.inviteLink,
  });
  
  /// [inviteLink] Invite link to be checked
  final String inviteLink;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
      "@extra": extra,
    };
  }
  
  CheckChatInviteLink copyWith({
    String? inviteLink,
  }) => CheckChatInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
  );

  static const CONSTRUCTOR = 'checkChatInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
