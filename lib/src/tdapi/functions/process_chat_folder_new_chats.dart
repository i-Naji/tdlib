part of '../tdapi.dart';

class ProcessChatFolderNewChats extends TdFunction {
  /// Process new chats added to a shareable chat folder by its owner
  const ProcessChatFolderNewChats({
    required this.chatFolderId,
    required this.addedChatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [addedChatIds] Identifiers of the new chats, which are added to the chat folder. The chats are automatically joined if they aren't joined yet
  final List<int> addedChatIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_id": chatFolderId,
      "added_chat_ids": addedChatIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  ProcessChatFolderNewChats copyWith({
    int? chatFolderId,
    List<int>? addedChatIds,
  }) =>
      ProcessChatFolderNewChats(
        chatFolderId: chatFolderId ?? this.chatFolderId,
        addedChatIds: addedChatIds ?? this.addedChatIds,
      );

  static const CONSTRUCTOR = 'processChatFolderNewChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
