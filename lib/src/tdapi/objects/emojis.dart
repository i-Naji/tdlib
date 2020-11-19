part of '../tdapi.dart';

class Emojis extends TdObject {
  /// Represents a list of emoji
  Emojis({this.emojis});

  /// [emojis] List of emojis
  List<String> emojis;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Emojis.fromJson(Map<String, dynamic> json) {
    this.emojis =
        List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
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
