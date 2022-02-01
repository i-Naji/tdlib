part of '../tdapi.dart';

class PhotoSize extends TdObject {

  /// Describes an image in JPEG format
  const PhotoSize({
    required this.type,
    required this.photo,
    required this.width,
    required this.height,
    required this.progressiveSizes,
  });
  
  /// [type] Image type (see https://core.telegram.org/constructor/photoSize)
  final String type;

  /// [photo] Information about the image file
  final File photo;

  /// [width] Image width 
  final int width;

  /// [height] Image height
  final int height;

  /// [progressiveSizes] Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image; in bytes
  final List<int> progressiveSizes;
  
  /// Parse from a json
  factory PhotoSize.fromJson(Map<String, dynamic> json) => PhotoSize(
    type: json['type'],
    photo: File.fromJson(json['photo']),
    width: json['width'],
    height: json['height'],
    progressiveSizes: List<int>.from((json['progressive_sizes'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type,
      "photo": photo.toJson(),
      "width": width,
      "height": height,
      "progressive_sizes": progressiveSizes.map((i) => i).toList(),
    };
  }
  
  PhotoSize copyWith({
    String? type,
    File? photo,
    int? width,
    int? height,
    List<int>? progressiveSizes,
  }) => PhotoSize(
    type: type ?? this.type,
    photo: photo ?? this.photo,
    width: width ?? this.width,
    height: height ?? this.height,
    progressiveSizes: progressiveSizes ?? this.progressiveSizes,
  );

  static const CONSTRUCTOR = 'photoSize';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
