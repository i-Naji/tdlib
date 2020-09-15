part of '../tdapi.dart';

class Thumbnail extends TdObject {
  ThumbnailFormat format;
  int width;
  int height;
  File file;

  /// Represents a thumbnail. 
  /// [format] Thumbnail format . 
  /// [width] Thumbnail width . 
  /// [height] Thumbnail height . 
  /// [file] The thumbnail
  Thumbnail({this.format,
    this.width,
    this.height,
    this.file});

  /// Parse from a json
  Thumbnail.fromJson(Map<String, dynamic> json)  {
    this.format = ThumbnailFormat.fromJson(json['format'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
    this.file = File.fromJson(json['file'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "format": this.format == null ? null : this.format.toJson(),
      "width": this.width,
      "height": this.height,
      "file": this.file == null ? null : this.file.toJson(),
    };
  }

  static const CONSTRUCTOR = 'thumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}