part of '../tdapi.dart';

class DownloadedFileCounts extends TdObject {
  /// Contains number of being downloaded and recently downloaded files found
  const DownloadedFileCounts({
    required this.activeCount,
    required this.pausedCount,
    required this.completedCount,
  });

  /// [activeCount] Number of active file downloads found, including paused
  final int activeCount;

  /// [pausedCount] Number of paused file downloads found
  final int pausedCount;

  /// [completedCount] Number of completed file downloads found
  final int completedCount;

  /// Parse from a json
  factory DownloadedFileCounts.fromJson(Map<String, dynamic> json) =>
      DownloadedFileCounts(
        activeCount: json['active_count'],
        pausedCount: json['paused_count'],
        completedCount: json['completed_count'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "active_count": activeCount,
      "paused_count": pausedCount,
      "completed_count": completedCount,
    };
  }

  DownloadedFileCounts copyWith({
    int? activeCount,
    int? pausedCount,
    int? completedCount,
  }) =>
      DownloadedFileCounts(
        activeCount: activeCount ?? this.activeCount,
        pausedCount: pausedCount ?? this.pausedCount,
        completedCount: completedCount ?? this.completedCount,
      );

  static const CONSTRUCTOR = 'downloadedFileCounts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
