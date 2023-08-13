part of '../tdapi.dart';

class DeleteStory extends TdFunction {
  /// Deletes a previously sent story
  const DeleteStory({
    required this.storyId,
  });

  /// [storyId] Identifier of the story to delete
  final int storyId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "@extra": extra,
    };
  }

  DeleteStory copyWith({
    int? storyId,
  }) =>
      DeleteStory(
        storyId: storyId ?? this.storyId,
      );

  static const CONSTRUCTOR = 'deleteStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
