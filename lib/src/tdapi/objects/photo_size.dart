part of '../tdapi.dart';

class PhotoSize extends TdObject {

  /// Photo description
  PhotoSize({this.type,
    this.photo,
    this.width,
    this.height});

  /// [type] Thumbnail type (see https://core.telegram.org/constructor/photoSize) 
  String type;

  /// [photo] Information about the photo file 
  File photo;

  /// [width] Photo width 
  int width;

  /// [height] Photo height
  int height;

  /// Parse from a json
  PhotoSize.fromJson(Map<String, dynamic> json)  {
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
      "photo": this.photo == null ? null : this.photo.toJson(),
      "width": this.width,
      "height": this.height,
    };
  }

  static const CONSTRUCTOR = 'photoSize';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}