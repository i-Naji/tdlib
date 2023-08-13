part of '../tdapi.dart';

class GetChatFolderChatCount extends TdFunction {
  /// Returns approximate number of chats in a being created chat folder. Main and archive chat lists must be fully preloaded for this function to work correctly
  const GetChatFolderChatCount({
    required this.folder,
  });

  /// [folder] The new chat folder
  final ChatFolder folder;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "folder": folder.toJson(),
      "@extra": extra,
    };
  }

  GetChatFolderChatCount copyWith({
    ChatFolder? folder,
  }) =>
      GetChatFolderChatCount(
        folder: folder ?? this.folder,
      );

  static const CONSTRUCTOR = 'getChatFolderChatCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
