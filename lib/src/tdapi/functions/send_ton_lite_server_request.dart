part of '../tdapi.dart';

class SendTonLiteServerRequest extends TdFunction {
  String request;
  dynamic extra;

  /// Sends a request to TON lite server through Telegram servers.
  ///[request] The request
  SendTonLiteServerRequest({this.request});

  /// Parse from a json
  SendTonLiteServerRequest.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "request": this.request,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendTonLiteServerRequest";

  @override
  String getConstructor() => CONSTRUCTOR;
}
