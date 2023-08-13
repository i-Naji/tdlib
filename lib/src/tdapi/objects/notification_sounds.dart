part of '../tdapi.dart';

class NotificationSounds extends TdObject {
  /// Contains a list of notification sounds
  const NotificationSounds({
    required this.notificationSounds,
    this.extra,
    this.clientId,
  });

  /// [notificationSounds] A list of notification sounds
  final List<NotificationSound> notificationSounds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory NotificationSounds.fromJson(Map<String, dynamic> json) =>
      NotificationSounds(
        notificationSounds: List<NotificationSound>.from(
            (json['notification_sounds'] ?? [])
                .map((item) => NotificationSound.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_sounds": notificationSounds.map((i) => i.toJson()).toList(),
    };
  }

  NotificationSounds copyWith({
    List<NotificationSound>? notificationSounds,
    dynamic extra,
    int? clientId,
  }) =>
      NotificationSounds(
        notificationSounds: notificationSounds ?? this.notificationSounds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'notificationSounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
