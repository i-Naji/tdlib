part of '../tdapi.dart';

class RemoveAllFilesFromDownloads extends TdFunction {
  /// Removes all files from the file download list
  const RemoveAllFilesFromDownloads({
    required this.onlyActive,
    required this.onlyCompleted,
    required this.deleteFromCache,
  });

  /// [onlyActive] Pass true to remove only active downloads, including paused
  final bool onlyActive;

  /// [onlyCompleted] Pass true to remove only completed downloads
  final bool onlyCompleted;

  /// [deleteFromCache] Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "only_active": onlyActive,
      "only_completed": onlyCompleted,
      "delete_from_cache": deleteFromCache,
      "@extra": extra,
    };
  }

  RemoveAllFilesFromDownloads copyWith({
    bool? onlyActive,
    bool? onlyCompleted,
    bool? deleteFromCache,
  }) =>
      RemoveAllFilesFromDownloads(
        onlyActive: onlyActive ?? this.onlyActive,
        onlyCompleted: onlyCompleted ?? this.onlyCompleted,
        deleteFromCache: deleteFromCache ?? this.deleteFromCache,
      );

  static const CONSTRUCTOR = 'removeAllFilesFromDownloads';

  @override
  String getConstructor() => CONSTRUCTOR;
}
