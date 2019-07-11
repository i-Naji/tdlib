part of '../tdapi.dart';

class ScopeNotificationSettings implements TLObject {
  int muteFor;
  String sound;
  bool showPreview;
  bool disablePinnedMessageNotifications;
  bool disableMentionNotifications;
  dynamic extra;

  /// Contains information about notification settings for several chats.
  ///[muteFor] Time left before notifications will be unmuted, in seconds.
  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications.
  /// [showPreview] True, if message content should be displayed in notifications.
  /// [disablePinnedMessageNotifications] True, if notifications for incoming pinned messages will be created as for an ordinary unread message.
  /// [disableMentionNotifications] True, if notifications for messages with mentions will be created as for an ordinary unread message
  ScopeNotificationSettings(
      {this.muteFor,
      this.sound,
      this.showPreview,
      this.disablePinnedMessageNotifications,
      this.disableMentionNotifications});

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
      "disable_mention_notifications": this.disableMentionNotifications
    };
  }

  static const String CONSTRUCTOR = "scopeNotificationSettings";

  @override
  String getConstructor() => CONSTRUCTOR;
}
