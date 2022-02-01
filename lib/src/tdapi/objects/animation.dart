part of '../tdapi.dart';

class Animation extends TdObject {

  /// Describes an animation file. The animation must be encoded in GIF or MPEG4 format
  const Animation({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    this.minithumbnail,
    this.thumbnail,
    required this.animation,
  });
  
  /// [duration] Duration of the animation, in seconds; as defined by the sender 
  final int duration;

  /// [width] Width of the animation 
  final int width;

  /// [height] Height of the animation
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4"
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the animation. The list of corresponding sticker set can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Animation minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Animation thumbnail in JPEG or MPEG4 format; may be null 
  final Thumbnail? thumbnail;

  /// [animation] File containing the animation
  final File animation;
  
  /// Parse from a json
  factory Animation.fromJson(Map<String, dynamic> json) => Animation(
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    hasStickers: json['has_stickers'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    animation: File.fromJson(json['animation']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
      "width": width,
      "height": height,
      "file_name": fileName,
      "mime_type": mimeType,
      "has_stickers": hasStickers,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "animation": animation.toJson(),
    };
  }
  
  Animation copyWith({
    int? duration,
    int? width,
    int? height,
    String? fileName,
    String? mimeType,
    bool? hasStickers,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? animation,
  }) => Animation(
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    fileName: fileName ?? this.fileName,
    mimeType: mimeType ?? this.mimeType,
    hasStickers: hasStickers ?? this.hasStickers,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    thumbnail: thumbnail ?? this.thumbnail,
    animation: animation ?? this.animation,
  );

  static const CONSTRUCTOR = 'animation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
