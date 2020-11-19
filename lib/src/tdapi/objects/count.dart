part of '../tdapi.dart';

class Count extends TdObject {
  /// Contains a counter
  Count({this.count});

  /// [count] Count
  int count;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Count.fromJson(Map<String, dynamic> json) {
    this.count = json['count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "count": this.count,
    };
  }

  static const CONSTRUCTOR = 'count';

  @override
  String getConstructor() => CONSTRUCTOR;
}
