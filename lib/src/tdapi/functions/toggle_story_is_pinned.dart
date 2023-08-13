part of '../tdapi.dart';

class ToggleStoryIsPinned extends TdFunction {
  /// Toggles whether a story is accessible after expiration
  const ToggleStoryIsPinned({
    required this.storyId,
    required this.isPinned,
  });

  /// [storyId] Identifier of the story
  final int storyId;

  /// [isPinned] Pass true to make the story accessible after expiration; pass false to make it private
  final bool isPinned;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "is_pinned": isPinned,
      "@extra": extra,
    };
  }

  ToggleStoryIsPinned copyWith({
    int? storyId,
    bool? isPinned,
  }) =>
      ToggleStoryIsPinned(
        storyId: storyId ?? this.storyId,
        isPinned: isPinned ?? this.isPinned,
      );

  static const CONSTRUCTOR = 'toggleStoryIsPinned';

  @override
  String getConstructor() => CONSTRUCTOR;
}
