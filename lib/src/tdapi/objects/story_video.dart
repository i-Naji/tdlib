part of '../tdapi.dart';

class StoryVideo extends TdObject {
  /// Describes a video file sent in a story
  const StoryVideo({
    required this.duration,
    required this.width,
    required this.height,
    required this.hasStickers,
    required this.isAnimation,
    this.minithumbnail,
    this.thumbnail,
    required this.preloadPrefixSize,
    required this.video,
  });

  /// [duration] Duration of the video, in seconds
  final double duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [isAnimation] True, if the video has no sound
  final bool isAnimation;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail? thumbnail;

  /// [preloadPrefixSize] Size of file prefix, which is supposed to be preloaded, in bytes
  final int preloadPrefixSize;

  /// [video] File containing the video
  final File video;

  /// Parse from a json
  factory StoryVideo.fromJson(Map<String, dynamic> json) => StoryVideo(
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        hasStickers: json['has_stickers'],
        isAnimation: json['is_animation'],
        minithumbnail: json['minithumbnail'] == null
            ? null
            : Minithumbnail.fromJson(json['minithumbnail']),
        thumbnail: json['thumbnail'] == null
            ? null
            : Thumbnail.fromJson(json['thumbnail']),
        preloadPrefixSize: json['preload_prefix_size'],
        video: File.fromJson(json['video']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "width": width,
      "height": height,
      "has_stickers": hasStickers,
      "is_animation": isAnimation,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "preload_prefix_size": preloadPrefixSize,
      "video": video.toJson(),
    };
  }

  StoryVideo copyWith({
    double? duration,
    int? width,
    int? height,
    bool? hasStickers,
    bool? isAnimation,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    int? preloadPrefixSize,
    File? video,
  }) =>
      StoryVideo(
        duration: duration ?? this.duration,
        width: width ?? this.width,
        height: height ?? this.height,
        hasStickers: hasStickers ?? this.hasStickers,
        isAnimation: isAnimation ?? this.isAnimation,
        minithumbnail: minithumbnail ?? this.minithumbnail,
        thumbnail: thumbnail ?? this.thumbnail,
        preloadPrefixSize: preloadPrefixSize ?? this.preloadPrefixSize,
        video: video ?? this.video,
      );

  static const CONSTRUCTOR = 'storyVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
