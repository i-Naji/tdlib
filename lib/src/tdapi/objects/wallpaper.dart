part of '../tdapi.dart';

class Wallpaper implements TLObject {
  int id;
  List<PhotoSize> sizes;
  int color;

  /// Contains information about a wallpaper.
  ///[id] Unique persistent wallpaper identifier .
  /// [sizes] Available variants of the wallpaper in different sizes. These photos can only be downloaded; they can't be sent in a message .
  /// [color] Main color of the wallpaper in RGB24 format; should be treated as background color if no photos are specified
  Wallpaper({this.id, this.sizes, this.color});

  /// Parse from a json
  Wallpaper.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.sizes = List<PhotoSize>.from((json['sizes'] ?? [])
        .map((listValue) => PhotoSize.fromJson(listValue))
        .toList());
    this.color = json['color'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sizes": this.sizes.map((listItem) => listItem.toJson()).toList(),
      "color": this.color
    };
  }

  static const String CONSTRUCTOR = "wallpaper";

  @override
  String getConstructor() => CONSTRUCTOR;
}
