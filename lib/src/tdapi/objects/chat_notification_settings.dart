part of '../tdapi.dart';

class ChatNotificationSettings extends TdObject {
  /// Contains information about notification settings for a chat or a forum topic
  const ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.soundId,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultMuteStories,
    required this.muteStories,
    required this.useDefaultStorySound,
    required this.storySoundId,
    required this.useDefaultShowStorySender,
    required this.showStorySender,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });

  /// [useDefaultMuteFor] If true, mute_for is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultMuteFor;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [useDefaultSound] If true, the value for the relevant type of chat or the forum chat is used instead of sound_id
  final bool useDefaultSound;

  /// [soundId] Identifier of the notification sound to be played for messages; 0 if sound is disabled
  final int soundId;

  /// [useDefaultShowPreview] If true, show_preview is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultShowPreview;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultMuteStories] If true, mute_stories is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultMuteStories;

  /// [muteStories] True, if story notifications are received without sound
  final bool muteStories;

  /// [useDefaultStorySound] If true, the value for the relevant type of chat is used instead of story_sound_id
  final bool useDefaultStorySound;

  /// [storySoundId] Identifier of the notification sound to be played for stories; 0 if sound is disabled
  final int storySoundId;

  /// [useDefaultShowStorySender] If true, show_story_sender is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultShowStorySender;

  /// [showStorySender] True, if the sender of stories must be displayed in notifications
  final bool showStorySender;

  /// [useDefaultDisablePinnedMessageNotifications] If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultDisablePinnedMessageNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [useDefaultDisableMentionNotifications] If true, disable_mention_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultDisableMentionNotifications;

  /// [disableMentionNotifications] If true, notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  /// Parse from a json
  factory ChatNotificationSettings.fromJson(Map<String, dynamic> json) =>
      ChatNotificationSettings(
        useDefaultMuteFor: json['use_default_mute_for'],
        muteFor: json['mute_for'],
        useDefaultSound: json['use_default_sound'],
        soundId: int.parse(json['sound_id']),
        useDefaultShowPreview: json['use_default_show_preview'],
        showPreview: json['show_preview'],
        useDefaultMuteStories: json['use_default_mute_stories'],
        muteStories: json['mute_stories'],
        useDefaultStorySound: json['use_default_story_sound'],
        storySoundId: int.parse(json['story_sound_id']),
        useDefaultShowStorySender: json['use_default_show_story_sender'],
        showStorySender: json['show_story_sender'],
        useDefaultDisablePinnedMessageNotifications:
            json['use_default_disable_pinned_message_notifications'],
        disablePinnedMessageNotifications:
            json['disable_pinned_message_notifications'],
        useDefaultDisableMentionNotifications:
            json['use_default_disable_mention_notifications'],
        disableMentionNotifications: json['disable_mention_notifications'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "use_default_mute_for": useDefaultMuteFor,
      "mute_for": muteFor,
      "use_default_sound": useDefaultSound,
      "sound_id": soundId,
      "use_default_show_preview": useDefaultShowPreview,
      "show_preview": showPreview,
      "use_default_mute_stories": useDefaultMuteStories,
      "mute_stories": muteStories,
      "use_default_story_sound": useDefaultStorySound,
      "story_sound_id": storySoundId,
      "use_default_show_story_sender": useDefaultShowStorySender,
      "show_story_sender": showStorySender,
      "use_default_disable_pinned_message_notifications":
          useDefaultDisablePinnedMessageNotifications,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "use_default_disable_mention_notifications":
          useDefaultDisableMentionNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }

  ChatNotificationSettings copyWith({
    bool? useDefaultMuteFor,
    int? muteFor,
    bool? useDefaultSound,
    int? soundId,
    bool? useDefaultShowPreview,
    bool? showPreview,
    bool? useDefaultMuteStories,
    bool? muteStories,
    bool? useDefaultStorySound,
    int? storySoundId,
    bool? useDefaultShowStorySender,
    bool? showStorySender,
    bool? useDefaultDisablePinnedMessageNotifications,
    bool? disablePinnedMessageNotifications,
    bool? useDefaultDisableMentionNotifications,
    bool? disableMentionNotifications,
  }) =>
      ChatNotificationSettings(
        useDefaultMuteFor: useDefaultMuteFor ?? this.useDefaultMuteFor,
        muteFor: muteFor ?? this.muteFor,
        useDefaultSound: useDefaultSound ?? this.useDefaultSound,
        soundId: soundId ?? this.soundId,
        useDefaultShowPreview:
            useDefaultShowPreview ?? this.useDefaultShowPreview,
        showPreview: showPreview ?? this.showPreview,
        useDefaultMuteStories:
            useDefaultMuteStories ?? this.useDefaultMuteStories,
        muteStories: muteStories ?? this.muteStories,
        useDefaultStorySound: useDefaultStorySound ?? this.useDefaultStorySound,
        storySoundId: storySoundId ?? this.storySoundId,
        useDefaultShowStorySender:
            useDefaultShowStorySender ?? this.useDefaultShowStorySender,
        showStorySender: showStorySender ?? this.showStorySender,
        useDefaultDisablePinnedMessageNotifications:
            useDefaultDisablePinnedMessageNotifications ??
                this.useDefaultDisablePinnedMessageNotifications,
        disablePinnedMessageNotifications: disablePinnedMessageNotifications ??
            this.disablePinnedMessageNotifications,
        useDefaultDisableMentionNotifications:
            useDefaultDisableMentionNotifications ??
                this.useDefaultDisableMentionNotifications,
        disableMentionNotifications:
            disableMentionNotifications ?? this.disableMentionNotifications,
      );

  static const CONSTRUCTOR = 'chatNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
