part of '../tdapi.dart';

class PhotoSize implements TLObject {
  String type;
  File photo;
  int width;
  int height;

  /// Photo description.
  ///[type] Thumbnail type (see https://core.telegram.org/constructor/photoSize) .
  /// [photo] Information about the photo file .
  /// [width] Photo width .
  /// [height] Photo height
  PhotoSize({this.type, this.photo, this.width, this.height});

  /// Parse from a json
  PhotoSize.fromJson(Map<String, dynamic> json) {
    this.type = json['type'];
    this.photo = File.fromJson(json['photo'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "photo": this.photo.toJson(),
      "width": this.width,
      "height": this.height
    };
  }

  static const String CONSTRUCTOR = "photoSize";

  @override
  String getConstructor() => CONSTRUCTOR;
}
