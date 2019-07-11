part of '../tdapi.dart';

class InputThumbnail implements TLObject {
  var thumbnail;
  int width;
  int height;

  /// A thumbnail to be sent along with a file; should be in JPEG or WEBP format for stickers, and less than 200 kB in size.
  ///[thumbnail] Thumbnail file to send. Sending thumbnails by file_id is currently not supported.
  /// [width] Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown .
  /// [height] Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  InputThumbnail({this.thumbnail, this.width, this.height});

  /// Parse from a json
  InputThumbnail.fromJson(Map<String, dynamic> json) {
    this.thumbnail =
        InputFile.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "thumbnail": this.thumbnail.toJson(),
      "width": this.width,
      "height": this.height
    };
  }

  static const String CONSTRUCTOR = "inputThumbnail";

  @override
  String getConstructor() => CONSTRUCTOR;
}
