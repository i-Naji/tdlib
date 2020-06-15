part of '../tdapi.dart';

class Emojis extends TdObject {
  List<String> emojis;
  dynamic extra;

  /// Represents a list of emoji. 
  /// [emojis] List of emojis
  Emojis({this.emojis});

  /// Parse from a json
  Emojis.fromJson(Map<String, dynamic> json)  {
    this.emojis = List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emojis": this.emojis.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'emojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}