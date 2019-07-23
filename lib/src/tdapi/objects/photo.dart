part of '../tdapi.dart';

class Photo implements TdObject {
  bool hasStickers;
  List<PhotoSize> sizes;

  /// Describes a photo.
  ///[hasStickers] True, if stickers were added to the photo .
  /// [sizes] Available variants of the photo, in different sizes
  Photo({this.hasStickers, this.sizes});

  /// Parse from a json
  Photo.fromJson(Map<String, dynamic> json) {
    this.hasStickers = json['has_stickers'];
    this.sizes = List<PhotoSize>.from((json['sizes'] ?? [])
        .map((listValue) => PhotoSize.fromJson(listValue))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_stickers": this.hasStickers,
      "sizes": this.sizes.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "photo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
