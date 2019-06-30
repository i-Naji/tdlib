part of '../tdapi.dart';

class Count implements TLObject {
  int count;
  dynamic extra;

  /// Contains a counter.
  ///[count] Count
  Count({this.count});

  /// Parse from a json
  Count.fromJson(Map<String, dynamic> json) {
    this.count = json['count'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'count': this.count};
  }

  static const String CONSTRUCTOR = 'count';

  @override
  String getConstructor() => CONSTRUCTOR;
}
