part of '../tdapi.dart';

class CustomRequestResult implements TLObject {
  String result;
  dynamic extra;

  /// Contains the result of a custom request.
  ///[result] A JSON-serialized result
  CustomRequestResult({this.result});

  /// Parse from a json
  CustomRequestResult.fromJson(Map<String, dynamic> json) {
    this.result = json['result'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'result': this.result};
  }

  static const String CONSTRUCTOR = 'customRequestResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}
