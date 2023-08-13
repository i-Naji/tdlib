part of '../tdapi.dart';

class CheckChatFolderInviteLink extends TdFunction {
  /// Checks the validity of an invite link for a chat folder and returns information about the corresponding chat folder
  const CheckChatFolderInviteLink({
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

  CheckChatFolderInviteLink copyWith({
    String? inviteLink,
  }) =>
      CheckChatFolderInviteLink(
        inviteLink: inviteLink ?? this.inviteLink,
      );

  static const CONSTRUCTOR = 'checkChatFolderInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
