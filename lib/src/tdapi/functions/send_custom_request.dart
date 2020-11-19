part of '../tdapi.dart';

class SendCustomRequest extends TdFunction {
  /// Sends a custom request; for bots only
  SendCustomRequest({this.method, this.parameters});

  /// [method] The method name
  String method;

  /// [parameters] JSON-serialized method parameters
  String parameters;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SendCustomRequest.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "method": this.method,
      "parameters": this.parameters,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCustomRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}
