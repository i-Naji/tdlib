part of '../tdapi.dart';

class Animation implements TdObject {
  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  Minithumbnail minithumbnail;
  PhotoSize thumbnail;
  File animation;

  /// Describes an animation file. The animation must be encoded in GIF or MPEG4 format.
  ///[duration] Duration of the animation, in seconds; as defined by the sender .
  /// [width] Width of the animation .
  /// [height] Height of the animation.
  /// [fileName] Original name of the file; as defined by the sender .
  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4".
  /// [minithumbnail] Animation minithumbnail; may be null .
  /// [thumbnail] Animation thumbnail; may be null .
  /// [animation] File containing the animation
  Animation(
      {this.duration,
      this.width,
      this.height,
      this.fileName,
      this.mimeType,
      this.minithumbnail,
      this.thumbnail,
      this.animation});

  /// Parse from a json
  Animation.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.minithumbnail =
        Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
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
      "minithumbnail": this.minithumbnail.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "animation": this.animation.toJson()
    };
  }

  static const String CONSTRUCTOR = "animation";

  @override
  String getConstructor() => CONSTRUCTOR;
}
