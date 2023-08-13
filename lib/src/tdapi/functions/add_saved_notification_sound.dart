part of '../tdapi.dart';

class AddSavedNotificationSound extends TdFunction {
  /// Adds a new notification sound to the list of saved notification sounds. The new notification sound is added to the top of the list. If it is already in the list, its position isn't changed
  const AddSavedNotificationSound({
    required this.sound,
  });

  /// [sound] Notification sound file to add
  final InputFile sound;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sound": sound.toJson(),
      "@extra": extra,
    };
  }

  AddSavedNotificationSound copyWith({
    InputFile? sound,
  }) =>
      AddSavedNotificationSound(
        sound: sound ?? this.sound,
      );

  static const CONSTRUCTOR = 'addSavedNotificationSound';

  @override
  String getConstructor() => CONSTRUCTOR;
}
