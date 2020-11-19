part of '../tdapi.dart';

class Minithumbnail extends TdObject {
  /// Thumbnail image of a very poor quality and low resolution
  Minithumbnail({this.width, this.height, this.data});

  /// [width] Thumbnail width, usually doesn't exceed 40
  int width;

  /// [height] Thumbnail height, usually doesn't exceed 40
  int height;

  /// [data] The thumbnail in JPEG format
  String data;

  /// Parse from a json
  Minithumbnail.fromJson(Map<String, dynamic> json) {
    this.width = json['width'];
    this.height = json['height'];
    this.data = json['data'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "width": this.width,
      "height": this.height,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'minithumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
