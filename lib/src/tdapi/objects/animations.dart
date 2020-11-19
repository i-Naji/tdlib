part of '../tdapi.dart';

class Animations extends TdObject {
  /// Represents a list of animations
  Animations({this.animations});

  /// [animations] List of animations
  List<Animation> animations;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Animations.fromJson(Map<String, dynamic> json) {
    this.animations = List<Animation>.from((json['animations'] ?? [])
        .map((item) => Animation.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animations": this.animations.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'animations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
