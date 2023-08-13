part of '../tdapi.dart';

class ScopeNotificationSettings extends TdObject {
  /// Contains information about notification settings for several chats
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.soundId,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.storySoundId,
    required this.showStorySender,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
    this.extra,
    this.clientId,
  });

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, mute_stories is ignored and stories are unmuted only for the first 5 chats from topChatCategoryUsers
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are received without sound
  final bool muteStories;

  /// [storySoundId] Identifier of the notification sound to be played for stories; 0 if sound is disabled
  final int storySoundId;

  /// [showStorySender] True, if the sender of stories must be displayed in notifications
  final bool showStorySender;

  /// [disablePinnedMessageNotifications] True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [disableMentionNotifications] True, if notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ScopeNotificationSettings(
        muteFor: json['mute_for'],
        soundId: int.parse(json['sound_id']),
        showPreview: json['show_preview'],
        useDefaultMuteStories: json['use_default_mute_stories'],
        muteStories: json['mute_stories'],
        storySoundId: int.parse(json['story_sound_id']),
        showStorySender: json['show_story_sender'],
        disablePinnedMessageNotifications:
            json['disable_pinned_message_notifications'],
        disableMentionNotifications: json['disable_mention_notifications'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mute_for": muteFor,
      "sound_id": soundId,
      "show_preview": showPreview,
      "use_default_mute_stories": useDefaultMuteStories,
      "mute_stories": muteStories,
      "story_sound_id": storySoundId,
      "show_story_sender": showStorySender,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }

  ScopeNotificationSettings copyWith({
    int? muteFor,
    int? soundId,
    bool? showPreview,
    bool? useDefaultMuteStories,
    bool? muteStories,
    int? storySoundId,
    bool? showStorySender,
    bool? disablePinnedMessageNotifications,
    bool? disableMentionNotifications,
    dynamic extra,
    int? clientId,
  }) =>
      ScopeNotificationSettings(
        muteFor: muteFor ?? this.muteFor,
        soundId: soundId ?? this.soundId,
        showPreview: showPreview ?? this.showPreview,
        useDefaultMuteStories:
            useDefaultMuteStories ?? this.useDefaultMuteStories,
        muteStories: muteStories ?? this.muteStories,
        storySoundId: storySoundId ?? this.storySoundId,
        showStorySender: showStorySender ?? this.showStorySender,
        disablePinnedMessageNotifications: disablePinnedMessageNotifications ??
            this.disablePinnedMessageNotifications,
        disableMentionNotifications:
            disableMentionNotifications ?? this.disableMentionNotifications,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'scopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
