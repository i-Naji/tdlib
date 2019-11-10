part of '../tdapi.dart';

class Photo implements TdObject {
  bool hasStickers;
  Minithumbnail minithumbnail;
  List<PhotoSize> sizes;

  /// Describes a photo.
  ///[hasStickers] True, if stickers were added to the photo .
  /// [minithumbnail] Photo minithumbnail; may be null .
  /// [sizes] Available variants of the photo, in different sizes
  Photo({this.hasStickers, this.minithumbnail, this.sizes});

  /// Parse from a json
  Photo.fromJson(Map<String, dynamic> json) {
    this.hasStickers = json['has_stickers'];
    this.minithumbnail =
        Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    this.sizes = List<PhotoSize>.from((json['sizes'] ?? [])
        .map((listValue) => PhotoSize.fromJson(listValue))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_stickers": this.hasStickers,
      "minithumbnail": this.minithumbnail.toJson(),
      "sizes": this.sizes.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "photo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
