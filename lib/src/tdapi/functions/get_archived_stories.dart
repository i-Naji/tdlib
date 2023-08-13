part of '../tdapi.dart';

class GetArchivedStories extends TdFunction {
  /// Returns the list of all stories of the current user. The stories are returned in a reverse chronological order (i.e., in order of decreasing story_id).. For optimal performance, the number of returned stories is chosen by TDLib
  const GetArchivedStories({
    required this.fromStoryId,
    required this.limit,
  });

  /// [fromStoryId] Identifier of the story starting from which stories must be returned; use 0 to get results from the last story
  final int fromStoryId;

  /// [limit] The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "from_story_id": fromStoryId,
      "limit": limit,
      "@extra": extra,
    };
  }

  GetArchivedStories copyWith({
    int? fromStoryId,
    int? limit,
  }) =>
      GetArchivedStories(
        fromStoryId: fromStoryId ?? this.fromStoryId,
        limit: limit ?? this.limit,
      );

  static const CONSTRUCTOR = 'getArchivedStories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
