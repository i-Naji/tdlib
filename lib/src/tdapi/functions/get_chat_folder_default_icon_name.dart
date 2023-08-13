part of '../tdapi.dart';

class GetChatFolderDefaultIconName extends TdFunction {
  /// Returns default icon name for a folder. Can be called synchronously
  const GetChatFolderDefaultIconName({
    required this.folder,
  });

  /// [folder] Chat folder
  final ChatFolder folder;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "folder": folder.toJson(),
      "@extra": extra,
    };
  }

  GetChatFolderDefaultIconName copyWith({
    ChatFolder? folder,
  }) =>
      GetChatFolderDefaultIconName(
        folder: folder ?? this.folder,
      );

  static const CONSTRUCTOR = 'getChatFolderDefaultIconName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
