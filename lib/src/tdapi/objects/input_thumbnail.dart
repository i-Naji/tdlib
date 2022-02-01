part of '../tdapi.dart';

class InputThumbnail extends TdObject {

  /// A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size
  const InputThumbnail({
    required this.thumbnail,
    required this.width,
    required this.height,
  });
  
  /// [thumbnail] Thumbnail file to send. Sending thumbnails by file_id is currently not supported
  final InputFile thumbnail;

  /// [width] Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
  final int width;

  /// [height] Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  final int height;
  
  /// Parse from a json
  factory InputThumbnail.fromJson(Map<String, dynamic> json) => InputThumbnail(
    thumbnail: InputFile.fromJson(json['thumbnail']),
    width: json['width'],
    height: json['height'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "thumbnail": thumbnail.toJson(),
      "width": width,
      "height": height,
    };
  }
  
  InputThumbnail copyWith({
    InputFile? thumbnail,
    int? width,
    int? height,
  }) => InputThumbnail(
    thumbnail: thumbnail ?? this.thumbnail,
    width: width ?? this.width,
    height: height ?? this.height,
  );

  static const CONSTRUCTOR = 'inputThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
