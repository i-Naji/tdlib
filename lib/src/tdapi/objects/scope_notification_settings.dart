part of '../tdapi.dart';

class ScopeNotificationSettings extends TdObject {
  /// Contains information about notification settings for several chats
  ScopeNotificationSettings(
      {this.muteFor,
      this.sound,
      this.showPreview,
      this.disablePinnedMessageNotifications,
      this.disableMentionNotifications});

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  int muteFor;

  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications
  String sound;

  /// [showPreview] True, if message content should be displayed in notifications
  bool showPreview;

  /// [disablePinnedMessageNotifications] True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  bool disablePinnedMessageNotifications;

  /// [disableMentionNotifications] True, if notifications for messages with mentions will be created as for an ordinary unread message
  bool disableMentionNotifications;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    this.muteFor = json['mute_for'];
    this.sound = json['sound'];
    this.showPreview = json['show_preview'];
    this.disablePinnedMessageNotifications =
        json['disable_pinned_message_notifications'];
    this.disableMentionNotifications = json['disable_mention_notifications'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "mute_for": this.muteFor,
      "sound": this.sound,
      "show_preview": this.showPreview,
      "disable_pinned_message_notifications":
          this.disablePinnedMessageNotifications,
      "disable_mention_notifications": this.disableMentionNotifications,
    };
  }

  static const CONSTRUCTOR = 'scopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
