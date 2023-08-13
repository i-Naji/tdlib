part of '../tdapi.dart';

class StoryPrivacySettings extends TdObject {
  /// Describes privacy settings of a story
  const StoryPrivacySettings();

  /// a StoryPrivacySettings return type can be :
  /// * [StoryPrivacySettingsEveryone]
  /// * [StoryPrivacySettingsContacts]
  /// * [StoryPrivacySettingsCloseFriends]
  /// * [StoryPrivacySettingsSelectedContacts]
  factory StoryPrivacySettings.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StoryPrivacySettingsEveryone.CONSTRUCTOR:
        return StoryPrivacySettingsEveryone.fromJson(json);
      case StoryPrivacySettingsContacts.CONSTRUCTOR:
        return StoryPrivacySettingsContacts.fromJson(json);
      case StoryPrivacySettingsCloseFriends.CONSTRUCTOR:
        return StoryPrivacySettingsCloseFriends.fromJson(json);
      case StoryPrivacySettingsSelectedContacts.CONSTRUCTOR:
        return StoryPrivacySettingsSelectedContacts.fromJson(json);
      default:
        return const StoryPrivacySettings();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  StoryPrivacySettings copyWith() => const StoryPrivacySettings();

  static const CONSTRUCTOR = 'storyPrivacySettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsEveryone extends StoryPrivacySettings {
  /// The story can be viewed by everyone
  const StoryPrivacySettingsEveryone();

  /// Parse from a json
  factory StoryPrivacySettingsEveryone.fromJson(Map<String, dynamic> json) =>
      const StoryPrivacySettingsEveryone();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StoryPrivacySettingsEveryone copyWith() =>
      const StoryPrivacySettingsEveryone();

  static const CONSTRUCTOR = 'storyPrivacySettingsEveryone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsContacts extends StoryPrivacySettings {
  /// The story can be viewed by all contacts except chosen users
  const StoryPrivacySettingsContacts({
    required this.exceptUserIds,
  });

  /// [exceptUserIds] User identifiers of the contacts that can't see the story; always empty for non-owned stories
  final List<int> exceptUserIds;

  /// Parse from a json
  factory StoryPrivacySettingsContacts.fromJson(Map<String, dynamic> json) =>
      StoryPrivacySettingsContacts(
        exceptUserIds: List<int>.from(
            (json['except_user_ids'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "except_user_ids": exceptUserIds.map((i) => i).toList(),
    };
  }

  @override
  StoryPrivacySettingsContacts copyWith({
    List<int>? exceptUserIds,
  }) =>
      StoryPrivacySettingsContacts(
        exceptUserIds: exceptUserIds ?? this.exceptUserIds,
      );

  static const CONSTRUCTOR = 'storyPrivacySettingsContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsCloseFriends extends StoryPrivacySettings {
  /// The story can be viewed by all close friends
  const StoryPrivacySettingsCloseFriends();

  /// Parse from a json
  factory StoryPrivacySettingsCloseFriends.fromJson(
          Map<String, dynamic> json) =>
      const StoryPrivacySettingsCloseFriends();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  StoryPrivacySettingsCloseFriends copyWith() =>
      const StoryPrivacySettingsCloseFriends();

  static const CONSTRUCTOR = 'storyPrivacySettingsCloseFriends';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StoryPrivacySettingsSelectedContacts extends StoryPrivacySettings {
  /// The story can be viewed by certain specified users
  const StoryPrivacySettingsSelectedContacts({
    required this.userIds,
  });

  /// [userIds] Identifiers of the users; always empty for non-owned stories
  final List<int> userIds;

  /// Parse from a json
  factory StoryPrivacySettingsSelectedContacts.fromJson(
          Map<String, dynamic> json) =>
      StoryPrivacySettingsSelectedContacts(
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }

  @override
  StoryPrivacySettingsSelectedContacts copyWith({
    List<int>? userIds,
  }) =>
      StoryPrivacySettingsSelectedContacts(
        userIds: userIds ?? this.userIds,
      );

  static const CONSTRUCTOR = 'storyPrivacySettingsSelectedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
