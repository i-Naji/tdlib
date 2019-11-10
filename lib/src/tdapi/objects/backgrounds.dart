part of '../tdapi.dart';

class Backgrounds implements TdObject {
  List<Background> backgrounds;
  dynamic extra;

  /// Contains a list of backgrounds.
  ///[backgrounds] A list of backgrounds
  Backgrounds({this.backgrounds});

  /// Parse from a json
  Backgrounds.fromJson(Map<String, dynamic> json) {
    this.backgrounds = List<Background>.from((json['backgrounds'] ?? [])
        .map((listValue) => Background.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "backgrounds":
          this.backgrounds.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "backgrounds";

  @override
  String getConstructor() => CONSTRUCTOR;
}
