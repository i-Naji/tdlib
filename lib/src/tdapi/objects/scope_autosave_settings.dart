part of '../tdapi.dart';

class ScopeAutosaveSettings extends TdObject {
  /// Contains autosave settings for an autosave settings scope
  const ScopeAutosaveSettings({
    required this.autosavePhotos,
    required this.autosaveVideos,
    required this.maxVideoFileSize,
  });

  /// [autosavePhotos] True, if photo autosave is enabled
  final bool autosavePhotos;

  /// [autosaveVideos] True, if video autosave is enabled
  final bool autosaveVideos;

  /// [maxVideoFileSize] The maximum size of a video file to be autosaved, in bytes; 512 KB - 4000 MB
  final int maxVideoFileSize;

  /// Parse from a json
  factory ScopeAutosaveSettings.fromJson(Map<String, dynamic> json) =>
      ScopeAutosaveSettings(
        autosavePhotos: json['autosave_photos'],
        autosaveVideos: json['autosave_videos'],
        maxVideoFileSize: json['max_video_file_size'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "autosave_photos": autosavePhotos,
      "autosave_videos": autosaveVideos,
      "max_video_file_size": maxVideoFileSize,
    };
  }

  ScopeAutosaveSettings copyWith({
    bool? autosavePhotos,
    bool? autosaveVideos,
    int? maxVideoFileSize,
  }) =>
      ScopeAutosaveSettings(
        autosavePhotos: autosavePhotos ?? this.autosavePhotos,
        autosaveVideos: autosaveVideos ?? this.autosaveVideos,
        maxVideoFileSize: maxVideoFileSize ?? this.maxVideoFileSize,
      );

  static const CONSTRUCTOR = 'scopeAutosaveSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
