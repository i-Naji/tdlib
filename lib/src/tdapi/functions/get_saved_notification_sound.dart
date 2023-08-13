part of '../tdapi.dart';

class GetSavedNotificationSound extends TdFunction {
  /// Returns saved notification sound by its identifier. Returns a 404 error if there is no saved notification sound with the specified identifier
  const GetSavedNotificationSound({
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

  GetSavedNotificationSound copyWith({
    int? notificationSoundId,
  }) =>
      GetSavedNotificationSound(
        notificationSoundId: notificationSoundId ?? this.notificationSoundId,
      );

  static const CONSTRUCTOR = 'getSavedNotificationSound';

  @override
  String getConstructor() => CONSTRUCTOR;
}
