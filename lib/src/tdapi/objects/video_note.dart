part of '../tdapi.dart';

class VideoNote implements TdObject {
  int duration;
  int length;
  PhotoSize thumbnail;
  File video;

  /// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.
  ///[duration] Duration of the video, in seconds; as defined by the sender .
  /// [length] Video width and height; as defined by the sender .
  /// [thumbnail] Video thumbnail; as defined by the sender; may be null .
  /// [video] File containing the video
  VideoNote({this.duration, this.length, this.thumbnail, this.video});

  /// Parse from a json
  VideoNote.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.length = json['length'];
    this.thumbnail =
        PhotoSize.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.video = File.fromJson(json['video'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "length": this.length,
      "thumbnail": this.thumbnail.toJson(),
      "video": this.video.toJson()
    };
  }

  static const String CONSTRUCTOR = "videoNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}
