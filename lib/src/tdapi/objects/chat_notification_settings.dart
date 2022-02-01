part of '../tdapi.dart';

class ChatNotificationSettings extends TdObject {

  /// Contains information about notification settings for a chat
  const ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.sound,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });
  
  /// [useDefaultMuteFor] If true, mute_for is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultMuteFor;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [useDefaultSound] If true, sound is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultSound;

  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications
  final String sound;

  /// [useDefaultShowPreview] If true, show_preview is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultShowPreview;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  /// [useDefaultDisablePinnedMessageNotifications] If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultDisablePinnedMessageNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// [useDefaultDisableMentionNotifications] If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
  final bool useDefaultDisableMentionNotifications;

  /// [disableMentionNotifications] If true, notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;
  
  /// Parse from a json
  factory ChatNotificationSettings.fromJson(Map<String, dynamic> json) => ChatNotificationSettings(
    useDefaultMuteFor: json['use_default_mute_for'],
    muteFor: json['mute_for'],
    useDefaultSound: json['use_default_sound'],
    sound: json['sound'],
    useDefaultShowPreview: json['use_default_show_preview'],
    showPreview: json['show_preview'],
    useDefaultDisablePinnedMessageNotifications: json['use_default_disable_pinned_message_notifications'],
    disablePinnedMessageNotifications: json['disable_pinned_message_notifications'],
    useDefaultDisableMentionNotifications: json['use_default_disable_mention_notifications'],
    disableMentionNotifications: json['disable_mention_notifications'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "use_default_mute_for": useDefaultMuteFor,
      "mute_for": muteFor,
      "use_default_sound": useDefaultSound,
      "sound": sound,
      "use_default_show_preview": useDefaultShowPreview,
      "show_preview": showPreview,
      "use_default_disable_pinned_message_notifications": useDefaultDisablePinnedMessageNotifications,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "use_default_disable_mention_notifications": useDefaultDisableMentionNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }
  
  ChatNotificationSettings copyWith({
    bool? useDefaultMuteFor,
    int? muteFor,
    bool? useDefaultSound,
    String? sound,
    bool? useDefaultShowPreview,
    bool? showPreview,
    bool? useDefaultDisablePinnedMessageNotifications,
    bool? disablePinnedMessageNotifications,
    bool? useDefaultDisableMentionNotifications,
    bool? disableMentionNotifications,
  }) => ChatNotificationSettings(
    useDefaultMuteFor: useDefaultMuteFor ?? this.useDefaultMuteFor,
    muteFor: muteFor ?? this.muteFor,
    useDefaultSound: useDefaultSound ?? this.useDefaultSound,
    sound: sound ?? this.sound,
    useDefaultShowPreview: useDefaultShowPreview ?? this.useDefaultShowPreview,
    showPreview: showPreview ?? this.showPreview,
    useDefaultDisablePinnedMessageNotifications: useDefaultDisablePinnedMessageNotifications ?? this.useDefaultDisablePinnedMessageNotifications,
    disablePinnedMessageNotifications: disablePinnedMessageNotifications ?? this.disablePinnedMessageNotifications,
    useDefaultDisableMentionNotifications: useDefaultDisableMentionNotifications ?? this.useDefaultDisableMentionNotifications,
    disableMentionNotifications: disableMentionNotifications ?? this.disableMentionNotifications,
  );

  static const CONSTRUCTOR = 'chatNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
