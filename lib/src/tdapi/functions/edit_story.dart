part of '../tdapi.dart';

class EditStory extends TdFunction {
  /// Changes content and caption of a previously sent story
  const EditStory({
    required this.storyId,
    this.content,
    this.caption,
  });

  /// [storyId] Identifier of the story to edit
  final int storyId;

  /// [content] New content of the story; pass null to keep the current content
  final InputStoryContent? content;

  /// [caption] New story caption; pass null to keep the current caption
  final FormattedText? caption;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "content": content?.toJson(),
      "caption": caption?.toJson(),
      "@extra": extra,
    };
  }

  EditStory copyWith({
    int? storyId,
    InputStoryContent? content,
    FormattedText? caption,
  }) =>
      EditStory(
        storyId: storyId ?? this.storyId,
        content: content ?? this.content,
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'editStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
