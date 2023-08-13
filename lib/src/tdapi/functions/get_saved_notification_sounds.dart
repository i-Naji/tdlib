part of '../tdapi.dart';

class GetSavedNotificationSounds extends TdFunction {
  /// Returns list of saved notification sounds. If a sound isn't in the list, then default sound needs to be used
  const GetSavedNotificationSounds();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetSavedNotificationSounds copyWith() => const GetSavedNotificationSounds();

  static const CONSTRUCTOR = 'getSavedNotificationSounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
