part of '../tdapi.dart';

class GroupCallId extends TdObject {
  /// Contains the group call identifier
  GroupCallId({this.id});

  /// [id] Group call identifier
  int id;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GroupCallId.fromJson(Map<String, dynamic> json) {
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

  static const CONSTRUCTOR = 'groupCallId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
