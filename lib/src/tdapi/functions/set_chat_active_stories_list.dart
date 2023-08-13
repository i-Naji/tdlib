part of '../tdapi.dart';

class SetChatActiveStoriesList extends TdFunction {
  /// Changes story list in which stories from the chat are shown
  const SetChatActiveStoriesList({
    required this.chatId,
    required this.storyList,
  });

  /// [chatId] Identifier of the chat that posted stories
  final int chatId;

  /// [storyList] New list for active stories posted by the chat
  final StoryList storyList;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "story_list": storyList.toJson(),
      "@extra": extra,
    };
  }

  SetChatActiveStoriesList copyWith({
    int? chatId,
    StoryList? storyList,
  }) =>
      SetChatActiveStoriesList(
        chatId: chatId ?? this.chatId,
        storyList: storyList ?? this.storyList,
      );

  static const CONSTRUCTOR = 'setChatActiveStoriesList';

  @override
  String getConstructor() => CONSTRUCTOR;
}
