part of '../tdapi.dart';

class GetChatFolderChatsToLeave extends TdFunction {
  /// Returns identifiers of pinned or always included chats from a chat folder, which are suggested to be left when the chat folder is deleted
  const GetChatFolderChatsToLeave({
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

  GetChatFolderChatsToLeave copyWith({
    int? chatFolderId,
  }) =>
      GetChatFolderChatsToLeave(
        chatFolderId: chatFolderId ?? this.chatFolderId,
      );

  static const CONSTRUCTOR = 'getChatFolderChatsToLeave';

  @override
  String getConstructor() => CONSTRUCTOR;
}
