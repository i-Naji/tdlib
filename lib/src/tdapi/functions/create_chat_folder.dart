part of '../tdapi.dart';

class CreateChatFolder extends TdFunction {
  /// Creates new chat folder. Returns information about the created chat folder. There can be up to getOption("chat_folder_count_max") chat folders, but the limit can be increased with Telegram Premium
  const CreateChatFolder({
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

  CreateChatFolder copyWith({
    ChatFolder? folder,
  }) =>
      CreateChatFolder(
        folder: folder ?? this.folder,
      );

  static const CONSTRUCTOR = 'createChatFolder';

  @override
  String getConstructor() => CONSTRUCTOR;
}
