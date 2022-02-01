part of '../tdapi.dart';

class Video extends TdObject {

  /// Describes a video file
  const Video({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    required this.supportsStreaming,
    this.minithumbnail,
    this.thumbnail,
    required this.video,
  });
  
  /// [duration] Duration of the video, in seconds; as defined by the sender 
  final int duration;

  /// [width] Video width; as defined by the sender 
  final int width;

  /// [height] Video height; as defined by the sender
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [supportsStreaming] True, if the video is supposed to be streamed
  final bool supportsStreaming;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// [video] File containing the video
  final File video;
  
  /// Parse from a json
  factory Video.fromJson(Map<String, dynamic> json) => Video(
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    hasStickers: json['has_stickers'],
    supportsStreaming: json['supports_streaming'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    video: File.fromJson(json['video']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "width": width,
      "height": height,
      "file_name": fileName,
      "mime_type": mimeType,
      "has_stickers": hasStickers,
      "supports_streaming": supportsStreaming,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "video": video.toJson(),
    };
  }
  
  Video copyWith({
    int? duration,
    int? width,
    int? height,
    String? fileName,
    String? mimeType,
    bool? hasStickers,
    bool? supportsStreaming,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? video,
  }) => Video(
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    fileName: fileName ?? this.fileName,
    mimeType: mimeType ?? this.mimeType,
    hasStickers: hasStickers ?? this.hasStickers,
    supportsStreaming: supportsStreaming ?? this.supportsStreaming,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    thumbnail: thumbnail ?? this.thumbnail,
    video: video ?? this.video,
  );

  static const CONSTRUCTOR = 'video';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
