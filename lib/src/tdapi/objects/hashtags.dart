part of '../tdapi.dart';

class Hashtags extends TdObject {
  /// Contains a list of hashtags
  Hashtags({this.hashtags});

  /// [hashtags] A list of hashtags
  List<String> hashtags;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Hashtags.fromJson(Map<String, dynamic> json) {
    this.hashtags = List<String>.from(
        (json['hashtags'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hashtags": this.hashtags.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'hashtags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
