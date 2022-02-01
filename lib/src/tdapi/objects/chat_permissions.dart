part of '../tdapi.dart';

class ChatPermissions extends TdObject {

  /// Describes actions that a user is allowed to take in a chat
  const ChatPermissions({
    required this.canSendMessages,
    required this.canSendMediaMessages,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
  });
  
  /// [canSendMessages] True, if the user can send text messages, contacts, locations, and venues
  final bool canSendMessages;

  /// [canSendMediaMessages] True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
  final bool canSendMediaMessages;

  /// [canSendPolls] True, if the user can send polls. Implies can_send_messages permissions
  final bool canSendPolls;

  /// [canSendOtherMessages] True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions
  final bool canSendOtherMessages;

  /// [canAddWebPagePreviews] True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
  final bool canAddWebPagePreviews;

  /// [canChangeInfo] True, if the user can change the chat title, photo, and other settings
  final bool canChangeInfo;

  /// [canInviteUsers] True, if the user can invite new users to the chat
  final bool canInviteUsers;

  /// [canPinMessages] True, if the user can pin messages
  final bool canPinMessages;
  
  /// Parse from a json
  factory ChatPermissions.fromJson(Map<String, dynamic> json) => ChatPermissions(
    canSendMessages: json['can_send_messages'],
    canSendMediaMessages: json['can_send_media_messages'],
    canSendPolls: json['can_send_polls'],
    canSendOtherMessages: json['can_send_other_messages'],
    canAddWebPagePreviews: json['can_add_web_page_previews'],
    canChangeInfo: json['can_change_info'],
    canInviteUsers: json['can_invite_users'],
    canPinMessages: json['can_pin_messages'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "can_send_messages": canSendMessages,
      "can_send_media_messages": canSendMediaMessages,
      "can_send_polls": canSendPolls,
      "can_send_other_messages": canSendOtherMessages,
      "can_add_web_page_previews": canAddWebPagePreviews,
      "can_change_info": canChangeInfo,
      "can_invite_users": canInviteUsers,
      "can_pin_messages": canPinMessages,
    };
  }
  
  ChatPermissions copyWith({
    bool? canSendMessages,
    bool? canSendMediaMessages,
    bool? canSendPolls,
    bool? canSendOtherMessages,
    bool? canAddWebPagePreviews,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPinMessages,
  }) => ChatPermissions(
    canSendMessages: canSendMessages ?? this.canSendMessages,
    canSendMediaMessages: canSendMediaMessages ?? this.canSendMediaMessages,
    canSendPolls: canSendPolls ?? this.canSendPolls,
    canSendOtherMessages: canSendOtherMessages ?? this.canSendOtherMessages,
    canAddWebPagePreviews: canAddWebPagePreviews ?? this.canAddWebPagePreviews,
    canChangeInfo: canChangeInfo ?? this.canChangeInfo,
    canInviteUsers: canInviteUsers ?? this.canInviteUsers,
    canPinMessages: canPinMessages ?? this.canPinMessages,
  );

  static const CONSTRUCTOR = 'chatPermissions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
