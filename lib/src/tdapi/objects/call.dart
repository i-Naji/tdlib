part of '../tdapi.dart';

class Call implements TdObject {
  int id;
  int userId;
  bool isOutgoing;
  var state;

  /// Describes a call.
  ///[id] Call identifier, not persistent .
  /// [userId] Peer user identifier .
  /// [isOutgoing] True, if the call is outgoing .
  /// [state] Call state
  Call({this.id, this.userId, this.isOutgoing, this.state});

  /// Parse from a json
  Call.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.userId = json['user_id'];
    this.isOutgoing = json['is_outgoing'];
    this.state = CallState.fromJson(json['state'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "user_id": this.userId,
      "is_outgoing": this.isOutgoing,
      "state": this.state.toJson()
    };
  }

  static const String CONSTRUCTOR = "call";

  @override
  String getConstructor() => CONSTRUCTOR;
}
