part of '../tdapi.dart';

class Animation implements TLObject {
  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  PhotoSize thumbnail;
  File animation;

  /// Describes an animation file. The animation must be encoded in GIF or MPEG4 format.
  ///[duration] Duration of the animation, in seconds; as defined by the sender .
  /// [width] Width of the animation .
  /// [height] Height of the animation.
  /// [fileName] Original name of the file; as defined by the sender .
  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4" .
  /// [thumbnail] Animation thumbnail; may be null .
  /// [animation] File containing the animation
  Animation(
      {this.duration,
      this.width,
      this.height,
      this.fileName,
      this.mimeType,
      this.thumbnail,
      this.animation});

  /// Parse from a json
  Animation.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.thumbnail =
        PhotoSize.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.animation = File.fromJson(json['animation'] ?? <String, dynamic>{});
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
      "thumbnail": this.thumbnail.toJson(),
      "animation": this.animation.toJson()
    };
  }

  static const String CONSTRUCTOR = "animation";

  @override
  String getConstructor() => CONSTRUCTOR;
}
