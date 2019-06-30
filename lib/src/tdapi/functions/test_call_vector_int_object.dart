part of '../tdapi.dart';

class TestCallVectorIntObject extends TLFunction {
  List<TestInt> x;
  dynamic extra;

  /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization.
  ///[x] Vector of objects to return
  TestCallVectorIntObject({this.x});

  /// Parse from a json
  TestCallVectorIntObject.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'x': this.x.map((listItem) => listItem.toJson()).toList(),
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'testCallVectorIntObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
