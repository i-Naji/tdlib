part of '../tdapi.dart';

class GetStory extends TdFunction {
  /// Returns a story
  const GetStory({
    required this.storySenderChatId,
    required this.storyId,
    required this.onlyLocal,
  });

  /// [storySenderChatId] Identifier of the chat that posted the story
  final int storySenderChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [onlyLocal] Pass true to get only locally available information without sending network requests
  final bool onlyLocal;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "only_local": onlyLocal,
      "@extra": extra,
    };
  }

  GetStory copyWith({
    int? storySenderChatId,
    int? storyId,
    bool? onlyLocal,
  }) =>
      GetStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        onlyLocal: onlyLocal ?? this.onlyLocal,
      );

  static const CONSTRUCTOR = 'getStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
