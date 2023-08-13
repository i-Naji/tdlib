part of '../tdapi.dart';

class GetChatFolder extends TdFunction {
  /// Returns information about a chat folder by its identifier
  const GetChatFolder({
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

  GetChatFolder copyWith({
    int? chatFolderId,
  }) =>
      GetChatFolder(
        chatFolderId: chatFolderId ?? this.chatFolderId,
      );

  static const CONSTRUCTOR = 'getChatFolder';

  @override
  String getConstructor() => CONSTRUCTOR;
}
