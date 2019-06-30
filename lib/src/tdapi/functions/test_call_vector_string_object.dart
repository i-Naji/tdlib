part of '../tdapi.dart';

class TestCallVectorStringObject extends TLFunction {
  List<TestString> x;
  dynamic extra;

  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization.
  ///[x] Vector of objects to return
  TestCallVectorStringObject({this.x});

  /// Parse from a json
  TestCallVectorStringObject.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'x': this.x.map((listItem) => listItem.toJson()).toList(),
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'testCallVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
