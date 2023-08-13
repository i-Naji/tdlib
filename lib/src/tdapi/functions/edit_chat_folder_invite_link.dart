part of '../tdapi.dart';

class EditChatFolderInviteLink extends TdFunction {
  /// Edits an invite link for a chat folder
  const EditChatFolderInviteLink({
    required this.chatFolderId,
    required this.inviteLink,
    required this.name,
    required this.chatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [inviteLink] Invite link to be edited
  final String inviteLink;

  /// [name] New name of the link; 0-32 characters
  final String name;

  /// [chatIds] New identifiers of chats to be accessible by the invite link. Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups will be automatically converted to supergroups before link editing
  final List<int> chatIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_id": chatFolderId,
      "invite_link": inviteLink,
      "name": name,
      "chat_ids": chatIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  EditChatFolderInviteLink copyWith({
    int? chatFolderId,
    String? inviteLink,
    String? name,
    List<int>? chatIds,
  }) =>
      EditChatFolderInviteLink(
        chatFolderId: chatFolderId ?? this.chatFolderId,
        inviteLink: inviteLink ?? this.inviteLink,
        name: name ?? this.name,
        chatIds: chatIds ?? this.chatIds,
      );

  static const CONSTRUCTOR = 'editChatFolderInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
