part of '../tdapi.dart';

class DeleteChatFolder extends TdFunction {
  /// Deletes existing chat folder
  const DeleteChatFolder({
    required this.chatFolderId,
    required this.leaveChatIds,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [leaveChatIds] Identifiers of the chats to leave. The chats must be pinned or always included in the folder
  final List<int> leaveChatIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_id": chatFolderId,
      "leave_chat_ids": leaveChatIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  DeleteChatFolder copyWith({
    int? chatFolderId,
    List<int>? leaveChatIds,
  }) =>
      DeleteChatFolder(
        chatFolderId: chatFolderId ?? this.chatFolderId,
        leaveChatIds: leaveChatIds ?? this.leaveChatIds,
      );

  static const CONSTRUCTOR = 'deleteChatFolder';

  @override
  String getConstructor() => CONSTRUCTOR;
}
