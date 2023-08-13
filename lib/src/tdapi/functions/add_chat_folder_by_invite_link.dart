part of '../tdapi.dart';

class AddChatFolderByInviteLink extends TdFunction {
  /// Adds a chat folder by an invite link
  const AddChatFolderByInviteLink({
    required this.inviteLink,
    required this.chatIds,
  });

  /// [inviteLink] Invite link for the chat folder
  final String inviteLink;

  /// [chatIds] Identifiers of the chats added to the chat folder. The chats are automatically joined if they aren't joined yet
  final List<int> chatIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": inviteLink,
      "chat_ids": chatIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  AddChatFolderByInviteLink copyWith({
    String? inviteLink,
    List<int>? chatIds,
  }) =>
      AddChatFolderByInviteLink(
        inviteLink: inviteLink ?? this.inviteLink,
        chatIds: chatIds ?? this.chatIds,
      );

  static const CONSTRUCTOR = 'addChatFolderByInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
