part of '../tdapi.dart';

class CallId extends TdObject {
  /// Contains the call identifier
  CallId({this.id});

  /// [id] Call identifier
  int id;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CallId.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
    };
  }

  static const CONSTRUCTOR = 'callId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
