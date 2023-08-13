part of '../tdapi.dart';

class CloseStory extends TdFunction {
  /// Informs TDLib that a story is closed by the user
  const CloseStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] The identifier of the sender of the story to close
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

  CloseStory copyWith({
    int? storySenderChatId,
    int? storyId,
  }) =>
      CloseStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
      );

  static const CONSTRUCTOR = 'closeStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
