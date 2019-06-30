part of '../tdapi.dart';

class Animations implements TLObject {
  List<Animation> animations;
  dynamic extra;

  /// Represents a list of animations.
  ///[animations] List of animations
  Animations({this.animations});

  /// Parse from a json
  Animations.fromJson(Map<String, dynamic> json) {
    this.animations = (json['animations'] ?? [])
        .map((listValue) => Animation.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'animations':
          this.animations.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'animations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
