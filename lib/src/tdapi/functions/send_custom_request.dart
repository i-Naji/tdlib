part of '../tdapi.dart';

class SendCustomRequest extends TdFunction {
  String method;
  String parameters;
  dynamic extra;

  /// Sends a custom request; for bots only.
  ///[method] The method name .
  /// [parameters] JSON-serialized method parameters
  SendCustomRequest({this.method, this.parameters});

  /// Parse from a json
  SendCustomRequest.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "method": this.method,
      "parameters": this.parameters,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendCustomRequest";

  @override
  String getConstructor() => CONSTRUCTOR;
}
