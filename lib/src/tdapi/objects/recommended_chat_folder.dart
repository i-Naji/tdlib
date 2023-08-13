part of '../tdapi.dart';

class RecommendedChatFolder extends TdObject {
  /// Describes a recommended chat folder
  const RecommendedChatFolder({
    required this.folder,
    required this.description,
  });

  /// [folder] The chat folder
  final ChatFolder folder;

  /// [description] Chat folder description
  final String description;

  /// Parse from a json
  factory RecommendedChatFolder.fromJson(Map<String, dynamic> json) =>
      RecommendedChatFolder(
        folder: ChatFolder.fromJson(json['folder']),
        description: json['description'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "folder": folder.toJson(),
      "description": description,
    };
  }

  RecommendedChatFolder copyWith({
    ChatFolder? folder,
    String? description,
  }) =>
      RecommendedChatFolder(
        folder: folder ?? this.folder,
        description: description ?? this.description,
      );

  static const CONSTRUCTOR = 'recommendedChatFolder';

  @override
  String getConstructor() => CONSTRUCTOR;
}
