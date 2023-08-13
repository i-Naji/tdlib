part of '../tdapi.dart';

class LoadActiveStories extends TdFunction {
  /// Loads more active stories from a story list. The loaded stories will be sent through updates. Active stories are sorted by. the pair (active_stories.order, active_stories.story_sender_chat_id) in descending order. Returns a 404 error if all active stories have been loaded
  const LoadActiveStories({
    required this.storyList,
  });

  /// [storyList] The story list in which to load active stories
  final StoryList storyList;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_list": storyList.toJson(),
      "@extra": extra,
    };
  }

  LoadActiveStories copyWith({
    StoryList? storyList,
  }) =>
      LoadActiveStories(
        storyList: storyList ?? this.storyList,
      );

  static const CONSTRUCTOR = 'loadActiveStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
