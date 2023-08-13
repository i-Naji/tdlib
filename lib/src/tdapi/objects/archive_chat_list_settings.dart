part of '../tdapi.dart';

class ArchiveChatListSettings extends TdObject {
  /// Contains settings for automatic moving of chats to and from the Archive chat lists
  const ArchiveChatListSettings({
    required this.archiveAndMuteNewChatsFromUnknownUsers,
    required this.keepUnmutedChatsArchived,
    required this.keepChatsFromFoldersArchived,
    this.extra,
    this.clientId,
  });

  /// [archiveAndMuteNewChatsFromUnknownUsers] True, if new chats from non-contacts will be automatically archived and muted. Can be set to true only if the option "can_archive_and_mute_new_chats_from_unknown_users" is true
  final bool archiveAndMuteNewChatsFromUnknownUsers;

  /// [keepUnmutedChatsArchived] True, if unmuted chats will be kept in the Archive chat list when they get a new message
  final bool keepUnmutedChatsArchived;

  /// [keepChatsFromFoldersArchived] True, if unmuted chats, that are always included or pinned in a folder, will be kept in the Archive chat list when they get a new message. Ignored if keep_unmuted_chats_archived == true
  final bool keepChatsFromFoldersArchived;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ArchiveChatListSettings.fromJson(Map<String, dynamic> json) =>
      ArchiveChatListSettings(
        archiveAndMuteNewChatsFromUnknownUsers:
            json['archive_and_mute_new_chats_from_unknown_users'],
        keepUnmutedChatsArchived: json['keep_unmuted_chats_archived'],
        keepChatsFromFoldersArchived: json['keep_chats_from_folders_archived'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "archive_and_mute_new_chats_from_unknown_users":
          archiveAndMuteNewChatsFromUnknownUsers,
      "keep_unmuted_chats_archived": keepUnmutedChatsArchived,
      "keep_chats_from_folders_archived": keepChatsFromFoldersArchived,
    };
  }

  ArchiveChatListSettings copyWith({
    bool? archiveAndMuteNewChatsFromUnknownUsers,
    bool? keepUnmutedChatsArchived,
    bool? keepChatsFromFoldersArchived,
    dynamic extra,
    int? clientId,
  }) =>
      ArchiveChatListSettings(
        archiveAndMuteNewChatsFromUnknownUsers:
            archiveAndMuteNewChatsFromUnknownUsers ??
                this.archiveAndMuteNewChatsFromUnknownUsers,
        keepUnmutedChatsArchived:
            keepUnmutedChatsArchived ?? this.keepUnmutedChatsArchived,
        keepChatsFromFoldersArchived:
            keepChatsFromFoldersArchived ?? this.keepChatsFromFoldersArchived,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'archiveChatListSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
