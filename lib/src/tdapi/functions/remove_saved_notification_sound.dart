part of '../tdapi.dart';

class RemoveSavedNotificationSound extends TdFunction {
  /// Removes a notification sound from the list of saved notification sounds
  const RemoveSavedNotificationSound({
    required this.notificationSoundId,
  });

  /// [notificationSoundId] Identifier of the notification sound
  final int notificationSoundId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "notification_sound_id": notificationSoundId,
      "@extra": extra,
    };
  }

  RemoveSavedNotificationSound copyWith({
    int? notificationSoundId,
  }) =>
      RemoveSavedNotificationSound(
        notificationSoundId: notificationSoundId ?? this.notificationSoundId,
      );

  static const CONSTRUCTOR = 'removeSavedNotificationSound';

  @override
  String getConstructor() => CONSTRUCTOR;
}
