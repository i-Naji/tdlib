part of '../tdapi.dart';

class Backgrounds extends TdObject {
  List<List<Background>> backgrounds;
  dynamic extra;

  /// Contains a list of backgrounds. 
  /// [backgrounds] A list of backgrounds
  Backgrounds({this.backgrounds});

  /// Parse from a json
  Backgrounds.fromJson(Map<String, dynamic> json)  {
    this.backgrounds = List<List<Background>>.from((json['backgrounds'] ?? []).map((item) => List<Background>.from((item ?? []).map((innerItem) => Background.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "backgrounds": this.backgrounds.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'backgrounds';
}