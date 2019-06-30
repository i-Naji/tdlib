part of '../tdapi.dart';

class Seconds implements TLObject {
  double seconds;
  dynamic extra;

  /// Contains a value representing a number of seconds.
  ///[seconds] Number of seconds
  Seconds({this.seconds});

  /// Parse from a json
  Seconds.fromJson(Map<String, dynamic> json) {
    this.seconds = json['seconds'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'seconds': this.seconds};
  }

  static const String CONSTRUCTOR = 'seconds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
