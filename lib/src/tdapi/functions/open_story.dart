part of '../tdapi.dart';

class OpenStory extends TdFunction {
  /// Informs TDLib that a story is opened and is being viewed by the user
  const OpenStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] The identifier of the sender of the opened story
  final int storySenderChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "@extra": extra,
    };
  }

  OpenStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) =>
      OpenStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
      );

  static const CONSTRUCTOR = 'openStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
