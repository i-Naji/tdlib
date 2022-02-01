part of '../tdapi.dart';

class VideoNote extends TdObject {

  /// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format
  const VideoNote({
    required this.duration,
    required this.length,
    this.minithumbnail,
    this.thumbnail,
    required this.video,
  });
  
  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [length] Video width and height; as defined by the sender
  final int length;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// [video] File containing the video
  final File video;
  
  /// Parse from a json
  factory VideoNote.fromJson(Map<String, dynamic> json) => VideoNote(
    duration: json['duration'],
    length: json['length'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    video: File.fromJson(json['video']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "length": length,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "video": video.toJson(),
    };
  }
  
  VideoNote copyWith({
    int? duration,
    int? length,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? video,
  }) => VideoNote(
    duration: duration ?? this.duration,
    length: length ?? this.length,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    thumbnail: thumbnail ?? this.thumbnail,
    video: video ?? this.video,
  );

  static const CONSTRUCTOR = 'videoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
