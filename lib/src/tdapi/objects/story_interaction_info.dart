part of '../tdapi.dart';

class StoryInteractionInfo extends TdObject {
  /// Contains information about interactions with a story
  const StoryInteractionInfo({
    required this.viewCount,
    required this.recentViewerUserIds,
  });

  /// [viewCount] Number of times the story was viewed
  final int viewCount;

  /// [recentViewerUserIds] Identifiers of at most 3 recent viewers of the story
  final List<int> recentViewerUserIds;

  /// Parse from a json
  factory StoryInteractionInfo.fromJson(Map<String, dynamic> json) =>
      StoryInteractionInfo(
        viewCount: json['view_count'],
        recentViewerUserIds: List<int>.from(
            (json['recent_viewer_user_ids'] ?? [])
                .map((item) => item)
                .toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "view_count": viewCount,
      "recent_viewer_user_ids": recentViewerUserIds.map((i) => i).toList(),
    };
  }

  StoryInteractionInfo copyWith({
    int? viewCount,
    List<int>? recentViewerUserIds,
  }) =>
      StoryInteractionInfo(
        viewCount: viewCount ?? this.viewCount,
        recentViewerUserIds: recentViewerUserIds ?? this.recentViewerUserIds,
      );

  static const CONSTRUCTOR = 'storyInteractionInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
