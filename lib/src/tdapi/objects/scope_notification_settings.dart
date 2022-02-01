part of '../tdapi.dart';

class ScopeNotificationSettings extends TdObject {

  /// Contains information about notification settings for several chats
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.sound,
    required this.showPreview,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
    this.extra,
    this.clientId,
  });
  
  /// [muteFor] Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications
  final String sound;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

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
  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) => ScopeNotificationSettings(
    muteFor: json['mute_for'],
    sound: json['sound'],
    showPreview: json['show_preview'],
    disablePinnedMessageNotifications: json['disable_pinned_message_notifications'],
    disableMentionNotifications: json['disable_mention_notifications'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mute_for": muteFor,
      "sound": sound,
      "show_preview": showPreview,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }
  
  ScopeNotificationSettings copyWith({
    int? muteFor,
    String? sound,
    bool? showPreview,
    bool? disablePinnedMessageNotifications,
    bool? disableMentionNotifications,
    dynamic extra,
    int? clientId,
  }) => ScopeNotificationSettings(
    muteFor: muteFor ?? this.muteFor,
    sound: sound ?? this.sound,
    showPreview: showPreview ?? this.showPreview,
    disablePinnedMessageNotifications: disablePinnedMessageNotifications ?? this.disablePinnedMessageNotifications,
    disableMentionNotifications: disableMentionNotifications ?? this.disableMentionNotifications,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'scopeNotificationSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
