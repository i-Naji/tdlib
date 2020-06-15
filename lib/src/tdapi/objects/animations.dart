part of '../tdapi.dart';

class Animations extends TdObject {
  List<Animation> animations;
  dynamic extra;

  /// Represents a list of animations. 
  /// [animations] List of animations
  Animations({this.animations});

  /// Parse from a json
  Animations.fromJson(Map<String, dynamic> json)  {
    this.animations = List<Animation>.from((json['animations'] ?? []).map((item) => Animation.fromJson(item ?? <String, dynamic>{})).toList());
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