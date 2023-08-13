part of '../tdapi.dart';

class GetChatsForChatFolderInviteLink extends TdFunction {
  /// Returns identifiers of chats from a chat folder, suitable for adding to a chat folder invite link
  const GetChatsForChatFolderInviteLink({
    required this.chatFolderId,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_id": chatFolderId,
      "@extra": extra,
    };
  }

  GetChatsForChatFolderInviteLink copyWith({
    int? chatFolderId,
  }) =>
      GetChatsForChatFolderInviteLink(
        chatFolderId: chatFolderId ?? this.chatFolderId,
      );

  static const CONSTRUCTOR = 'getChatsForChatFolderInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
