part of '../tdapi.dart';

class GetChatFolderInviteLinks extends TdFunction {
  /// Returns invite links created by the current user for a shareable chat folder
  const GetChatFolderInviteLinks({
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

  GetChatFolderInviteLinks copyWith({
    int? chatFolderId,
  }) =>
      GetChatFolderInviteLinks(
        chatFolderId: chatFolderId ?? this.chatFolderId,
      );

  static const CONSTRUCTOR = 'getChatFolderInviteLinks';

  @override
  String getConstructor() => CONSTRUCTOR;
}
