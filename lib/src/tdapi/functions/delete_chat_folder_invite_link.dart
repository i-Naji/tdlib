part of '../tdapi.dart';

class DeleteChatFolderInviteLink extends TdFunction {
  /// Deletes an invite link for a chat folder
  const DeleteChatFolderInviteLink({
    required this.chatFolderId,
    required this.inviteLink,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [inviteLink] Invite link to be deleted
  final String inviteLink;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_id": chatFolderId,
      "invite_link": inviteLink,
      "@extra": extra,
    };
  }

  DeleteChatFolderInviteLink copyWith({
    int? chatFolderId,
    String? inviteLink,
  }) =>
      DeleteChatFolderInviteLink(
        chatFolderId: chatFolderId ?? this.chatFolderId,
        inviteLink: inviteLink ?? this.inviteLink,
      );

  static const CONSTRUCTOR = 'deleteChatFolderInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
