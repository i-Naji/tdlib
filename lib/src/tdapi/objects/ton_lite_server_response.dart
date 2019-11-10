part of '../tdapi.dart';

class TonLiteServerResponse implements TdObject {
  String response;
  dynamic extra;

  /// Contains the response of a request to TON lite server.
  ///[response] The response
  TonLiteServerResponse({this.response});

  /// Parse from a json
  TonLiteServerResponse.fromJson(Map<String, dynamic> json) {
    this.response = json['response'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "response": this.response};
  }

  static const String CONSTRUCTOR = "tonLiteServerResponse";

  @override
  String getConstructor() => CONSTRUCTOR;
}
