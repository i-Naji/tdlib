part of '../tdapi.dart';

class Wallpapers implements TdObject {
  List<Wallpaper> wallpapers;
  dynamic extra;

  /// Contains a list of wallpapers.
  ///[wallpapers] A list of wallpapers
  Wallpapers({this.wallpapers});

  /// Parse from a json
  Wallpapers.fromJson(Map<String, dynamic> json) {
    this.wallpapers = List<Wallpaper>.from((json['wallpapers'] ?? [])
        .map((listValue) => Wallpaper.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "wallpapers":
          this.wallpapers.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "wallpapers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
