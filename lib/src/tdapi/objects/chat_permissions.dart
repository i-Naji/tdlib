part of '../tdapi.dart';

class ChatPermissions extends TdObject {
  /// Describes actions that a user is allowed to take in a chat
  const ChatPermissions({
    required this.canSendBasicMessages,
    required this.canSendAudios,
    required this.canSendDocuments,
    required this.canSendPhotos,
    required this.canSendVideos,
    required this.canSendVideoNotes,
    required this.canSendVoiceNotes,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canManageTopics,
  });

  /// [canSendBasicMessages] True, if the user can send text messages, contacts, invoices, locations, and venues
  final bool canSendBasicMessages;

  /// [canSendAudios] True, if the user can send music files
  final bool canSendAudios;

  /// [canSendDocuments] True, if the user can send documents
  final bool canSendDocuments;

  /// [canSendPhotos] True, if the user can send audio photos
  final bool canSendPhotos;

  /// [canSendVideos] True, if the user can send audio videos
  final bool canSendVideos;

  /// [canSendVideoNotes] True, if the user can send video notes
  final bool canSendVideoNotes;

  /// [canSendVoiceNotes] True, if the user can send voice notes
  final bool canSendVoiceNotes;

  /// [canSendPolls] True, if the user can send polls
  final bool canSendPolls;

  /// [canSendOtherMessages] True, if the user can send animations, games, stickers, and dice and use inline bots
  final bool canSendOtherMessages;

  /// [canAddWebPagePreviews] True, if the user may add a web page preview to their messages
  final bool canAddWebPagePreviews;

  /// [canChangeInfo] True, if the user can change the chat title, photo, and other settings
  final bool canChangeInfo;

  /// [canInviteUsers] True, if the user can invite new users to the chat
  final bool canInviteUsers;

  /// [canPinMessages] True, if the user can pin messages
  final bool canPinMessages;

  /// [canManageTopics] True, if the user can manage topics
  final bool canManageTopics;

  /// Parse from a json
  factory ChatPermissions.fromJson(Map<String, dynamic> json) =>
      ChatPermissions(
        canSendBasicMessages: json['can_send_basic_messages'],
        canSendAudios: json['can_send_audios'],
        canSendDocuments: json['can_send_documents'],
        canSendPhotos: json['can_send_photos'],
        canSendVideos: json['can_send_videos'],
        canSendVideoNotes: json['can_send_video_notes'],
        canSendVoiceNotes: json['can_send_voice_notes'],
        canSendPolls: json['can_send_polls'],
        canSendOtherMessages: json['can_send_other_messages'],
        canAddWebPagePreviews: json['can_add_web_page_previews'],
        canChangeInfo: json['can_change_info'],
        canInviteUsers: json['can_invite_users'],
        canPinMessages: json['can_pin_messages'],
        canManageTopics: json['can_manage_topics'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_send_basic_messages": canSendBasicMessages,
      "can_send_audios": canSendAudios,
      "can_send_documents": canSendDocuments,
      "can_send_photos": canSendPhotos,
      "can_send_videos": canSendVideos,
      "can_send_video_notes": canSendVideoNotes,
      "can_send_voice_notes": canSendVoiceNotes,
      "can_send_polls": canSendPolls,
      "can_send_other_messages": canSendOtherMessages,
      "can_add_web_page_previews": canAddWebPagePreviews,
      "can_change_info": canChangeInfo,
      "can_invite_users": canInviteUsers,
      "can_pin_messages": canPinMessages,
      "can_manage_topics": canManageTopics,
    };
  }

  ChatPermissions copyWith({
    bool? canSendBasicMessages,
    bool? canSendAudios,
    bool? canSendDocuments,
    bool? canSendPhotos,
    bool? canSendVideos,
    bool? canSendVideoNotes,
    bool? canSendVoiceNotes,
    bool? canSendPolls,
    bool? canSendOtherMessages,
    bool? canAddWebPagePreviews,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPinMessages,
    bool? canManageTopics,
  }) =>
      ChatPermissions(
        canSendBasicMessages: canSendBasicMessages ?? this.canSendBasicMessages,
        canSendAudios: canSendAudios ?? this.canSendAudios,
        canSendDocuments: canSendDocuments ?? this.canSendDocuments,
        canSendPhotos: canSendPhotos ?? this.canSendPhotos,
        canSendVideos: canSendVideos ?? this.canSendVideos,
        canSendVideoNotes: canSendVideoNotes ?? this.canSendVideoNotes,
        canSendVoiceNotes: canSendVoiceNotes ?? this.canSendVoiceNotes,
        canSendPolls: canSendPolls ?? this.canSendPolls,
        canSendOtherMessages: canSendOtherMessages ?? this.canSendOtherMessages,
        canAddWebPagePreviews:
            canAddWebPagePreviews ?? this.canAddWebPagePreviews,
        canChangeInfo: canChangeInfo ?? this.canChangeInfo,
        canInviteUsers: canInviteUsers ?? this.canInviteUsers,
        canPinMessages: canPinMessages ?? this.canPinMessages,
        canManageTopics: canManageTopics ?? this.canManageTopics,
      );

  static const CONSTRUCTOR = 'chatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
