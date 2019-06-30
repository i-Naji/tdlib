part of '../tdapi.dart';

class Hashtags implements TLObject {
  List<String> hashtags;
  dynamic extra;

  /// Contains a list of hashtags.
  ///[hashtags] A list of hashtags
  Hashtags({this.hashtags});

  /// Parse from a json
  Hashtags.fromJson(Map<String, dynamic> json) {
    this.hashtags = json['hashtags'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'hashtags': this.hashtags};
  }

  static const String CONSTRUCTOR = 'hashtags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
