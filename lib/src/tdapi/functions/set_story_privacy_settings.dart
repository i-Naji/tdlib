part of '../tdapi.dart';

class SetStoryPrivacySettings extends TdFunction {
  /// Changes privacy settings of a previously sent story
  const SetStoryPrivacySettings({
    required this.storyId,
    required this.privacySettings,
  });

  /// [storyId] Identifier of the story
  final int storyId;

  /// [privacySettings] The new privacy settigs for the story
  final StoryPrivacySettings privacySettings;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "privacy_settings": privacySettings.toJson(),
      "@extra": extra,
    };
  }

  SetStoryPrivacySettings copyWith({
    int? storyId,
    StoryPrivacySettings? privacySettings,
  }) =>
      SetStoryPrivacySettings(
        storyId: storyId ?? this.storyId,
        privacySettings: privacySettings ?? this.privacySettings,
      );

  static const CONSTRUCTOR = 'setStoryPrivacySettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
