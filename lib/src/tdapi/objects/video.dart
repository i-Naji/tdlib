part of '../tdapi.dart';

class Video extends TdObject {
  /// Describes a video file
  Video(
      {this.duration,
      this.width,
      this.height,
      this.fileName,
      this.mimeType,
      this.hasStickers,
      this.supportsStreaming,
      this.minithumbnail,
      this.thumbnail,
      this.video});

  /// [duration] Duration of the video, in seconds; as defined by the sender
  int duration;

  /// [width] Video width; as defined by the sender
  int width;

  /// [height] Video height; as defined by the sender
  int height;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  String mimeType;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  bool hasStickers;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  bool supportsStreaming;

  /// [minithumbnail] Video minithumbnail; may be null
  Minithumbnail minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null
  Thumbnail thumbnail;

  /// [video] File containing the video
  File video;

  /// Parse from a json
  Video.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.hasStickers = json['has_stickers'];
    this.supportsStreaming = json['supports_streaming'];
    this.minithumbnail =
        Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.video = File.fromJson(json['video'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "has_stickers": this.hasStickers,
      "supports_streaming": this.supportsStreaming,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "video": this.video == null ? null : this.video.toJson(),
    };
  }

  static const CONSTRUCTOR = 'video';

  @override
  String getConstructor() => CONSTRUCTOR;
}
