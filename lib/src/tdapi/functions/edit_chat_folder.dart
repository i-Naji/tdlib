part of '../tdapi.dart';

class EditChatFolder extends TdFunction {
  /// Edits existing chat folder. Returns information about the edited chat folder
  const EditChatFolder({
    required this.chatFolderId,
    required this.folder,
  });

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  /// [folder] The edited chat folder
  final ChatFolder folder;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_folder_id": chatFolderId,
      "folder": folder.toJson(),
      "@extra": extra,
    };
  }

  EditChatFolder copyWith({
    int? chatFolderId,
    ChatFolder? folder,
  }) =>
      EditChatFolder(
        chatFolderId: chatFolderId ?? this.chatFolderId,
        folder: folder ?? this.folder,
      );

  static const CONSTRUCTOR = 'editChatFolder';

  @override
  String getConstructor() => CONSTRUCTOR;
}
