part of '../tdapi.dart';

class PushReceiverId extends TdObject {
  /// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification
  PushReceiverId({this.id});

  /// [id] The globally unique identifier of push notification subscription
  int id;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PushReceiverId.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
    };
  }

  static const CONSTRUCTOR = 'pushReceiverId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
