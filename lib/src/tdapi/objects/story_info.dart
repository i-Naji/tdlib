part of '../tdapi.dart';

class StoryInfo extends TdObject {
  /// Contains basic information about a story
  const StoryInfo({
    required this.storyId,
    required this.date,
    required this.isForCloseFriends,
  });

  /// [storyId] Unique story identifier among stories of the given sender
  final int storyId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isForCloseFriends] True, if the story is available only to close friends
  final bool isForCloseFriends;

  /// Parse from a json
  factory StoryInfo.fromJson(Map<String, dynamic> json) => StoryInfo(
        storyId: json['story_id'],
        date: json['date'],
        isForCloseFriends: json['is_for_close_friends'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "date": date,
      "is_for_close_friends": isForCloseFriends,
    };
  }

  StoryInfo copyWith({
    int? storyId,
    int? date,
    bool? isForCloseFriends,
  }) =>
      StoryInfo(
        storyId: storyId ?? this.storyId,
        date: date ?? this.date,
        isForCloseFriends: isForCloseFriends ?? this.isForCloseFriends,
      );

  static const CONSTRUCTOR = 'storyInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
