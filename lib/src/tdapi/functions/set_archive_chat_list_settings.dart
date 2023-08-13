part of '../tdapi.dart';

class SetArchiveChatListSettings extends TdFunction {
  /// Changes settings for automatic moving of chats to and from the Archive chat lists
  const SetArchiveChatListSettings({
    required this.settings,
  });

  /// [settings] New settings
  final ArchiveChatListSettings settings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "settings": settings.toJson(),
      "@extra": extra,
    };
  }

  SetArchiveChatListSettings copyWith({
    ArchiveChatListSettings? settings,
  }) =>
      SetArchiveChatListSettings(
        settings: settings ?? this.settings,
      );

  static const CONSTRUCTOR = 'setArchiveChatListSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
