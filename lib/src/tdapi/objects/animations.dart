part of '../tdapi.dart';

class Animations extends TdObject {
  List<List<Animation>> animations;
  dynamic extra;

  /// Represents a list of animations. 
  /// [animations] List of animations
  Animations({this.animations});

  /// Parse from a json
  Animations.fromJson(Map<String, dynamic> json)  {
    this.animations = List<List<Animation>>.from((json['animations'] ?? []).map((item) => List<Animation>.from((item ?? []).map((innerItem) => Animation.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animations": this.animations.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'animations';
}