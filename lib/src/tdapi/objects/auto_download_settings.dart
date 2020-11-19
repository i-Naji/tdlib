part of '../tdapi.dart';

class AutoDownloadSettings extends TdObject {
  /// Contains auto-download settings
  AutoDownloadSettings(
      {this.isAutoDownloadEnabled,
      this.maxPhotoFileSize,
      this.maxVideoFileSize,
      this.maxOtherFileSize,
      this.videoUploadBitrate,
      this.preloadLargeVideos,
      this.preloadNextAudio,
      this.useLessDataForCalls});

  /// [isAutoDownloadEnabled] True, if the auto-download is enabled
  bool isAutoDownloadEnabled;

  /// [maxPhotoFileSize] The maximum size of a photo file to be auto-downloaded
  int maxPhotoFileSize;

  /// [maxVideoFileSize] The maximum size of a video file to be auto-downloaded
  int maxVideoFileSize;

  /// [maxOtherFileSize] The maximum size of other file types to be auto-downloaded
  int maxOtherFileSize;

  /// [videoUploadBitrate] The maximum suggested bitrate for uploaded videos
  int videoUploadBitrate;

  /// [preloadLargeVideos] True, if the beginning of video files needs to be preloaded for instant playback
  bool preloadLargeVideos;

  /// [preloadNextAudio] True, if the next audio track needs to be preloaded while the user is listening to an audio file
  bool preloadNextAudio;

  /// [useLessDataForCalls] True, if "use less data for calls" option needs to be enabled
  bool useLessDataForCalls;

  /// Parse from a json
  AutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    this.isAutoDownloadEnabled = json['is_auto_download_enabled'];
    this.maxPhotoFileSize = json['max_photo_file_size'];
    this.maxVideoFileSize = json['max_video_file_size'];
    this.maxOtherFileSize = json['max_other_file_size'];
    this.videoUploadBitrate = json['video_upload_bitrate'];
    this.preloadLargeVideos = json['preload_large_videos'];
    this.preloadNextAudio = json['preload_next_audio'];
    this.useLessDataForCalls = json['use_less_data_for_calls'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_auto_download_enabled": this.isAutoDownloadEnabled,
      "max_photo_file_size": this.maxPhotoFileSize,
      "max_video_file_size": this.maxVideoFileSize,
      "max_other_file_size": this.maxOtherFileSize,
      "video_upload_bitrate": this.videoUploadBitrate,
      "preload_large_videos": this.preloadLargeVideos,
      "preload_next_audio": this.preloadNextAudio,
      "use_less_data_for_calls": this.useLessDataForCalls,
    };
  }

  static const CONSTRUCTOR = 'autoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
