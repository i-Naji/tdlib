part of '../tdapi.dart';

class Emojis extends TdObject {
  List<List<String>> emojis;
  dynamic extra;

  /// Represents a list of emoji. 
  /// [emojis] List of emojis
  Emojis({this.emojis});

  /// Parse from a json
  Emojis.fromJson(Map<String, dynamic> json)  {
    this.emojis = List<List<String>>.from((json['emojis'] ?? []).map((item) => List<String>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emojis": this.emojis.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'emojis';
}