part of '../tdapi.dart';

class TestBytes implements TLObject {
  String value;
  dynamic extra;

  /// A simple object containing a sequence of bytes; for testing only.
  ///[value] Bytes
  TestBytes({this.value});

  /// Parse from a json
  TestBytes.fromJson(Map<String, dynamic> json) {
    this.value = json['value'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'value': this.value};
  }

  static const String CONSTRUCTOR = 'testBytes';

  @override
  String getConstructor() => CONSTRUCTOR;
}
