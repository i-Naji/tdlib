part of '../tdapi.dart';

class GetChatFolderNewChats extends TdFunction {
  /// Returns new chats added to a shareable chat folder by its owner. The method must be called at most once in getOption("chat_folder_new_chats_update_period") for the given chat folder
  const GetChatFolderNewChats({
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

  GetChatFolderNewChats copyWith({
    int? chatFolderId,
  }) =>
      GetChatFolderNewChats(
        chatFolderId: chatFolderId ?? this.chatFolderId,
      );

  static const CONSTRUCTOR = 'getChatFolderNewChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
