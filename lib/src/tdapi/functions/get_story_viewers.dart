part of '../tdapi.dart';

class GetStoryViewers extends TdFunction {
  /// Returns viewers of a recent outgoing story. The method can be called if story.can_get_viewers == true. The views are returned in a reverse chronological order (i.e., in order of decreasing view_date). For optimal performance, the number of returned stories is chosen by TDLib
  const GetStoryViewers({
    required this.storyId,
    this.offsetViewer,
    required this.limit,
  });

  /// [storyId] Story identifier
  final int storyId;

  /// [offsetViewer] A viewer from which to return next viewers; pass null to get results from the beginning
  final MessageViewer? offsetViewer;

  /// [limit] The maximum number of story viewers to return. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_id": storyId,
      "offset_viewer": offsetViewer?.toJson(),
      "limit": limit,
      "@extra": extra,
    };
  }

  GetStoryViewers copyWith({
    int? storyId,
    MessageViewer? offsetViewer,
    int? limit,
  }) =>
      GetStoryViewers(
        storyId: storyId ?? this.storyId,
        offsetViewer: offsetViewer ?? this.offsetViewer,
        limit: limit ?? this.limit,
      );

  static const CONSTRUCTOR = 'getStoryViewers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
