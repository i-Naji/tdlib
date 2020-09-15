part of '../tdapi.dart';

class Call extends TdObject {

  /// Describes a call
  Call({this.id,
    this.userId,
    this.isOutgoing,
    this.state});

  /// [id] Call identifier, not persistent 
  int id;

  /// [userId] Peer user identifier 
  int userId;

  /// [isOutgoing] True, if the call is outgoing 
  bool isOutgoing;

  /// [state] Call state
  CallState state;

  /// Parse from a json
  Call.fromJson(Map<String, dynamic> json)  {
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
      "state": this.state == null ? null : this.state.toJson(),
    };
  }

  static const CONSTRUCTOR = 'call';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}