part of '../tdapi.dart';

class Seconds extends TdObject {
  /// Contains a value representing a number of seconds
  Seconds({this.seconds});

  /// [seconds] Number of seconds
  double seconds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Seconds.fromJson(Map<String, dynamic> json) {
    this.seconds = json['seconds'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "seconds": this.seconds,
    };
  }

  static const CONSTRUCTOR = 'seconds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
