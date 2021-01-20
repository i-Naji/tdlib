part of '../tdapi.dart';

class JoinGroupCall extends TdFunction {
  /// Joins a group call
  JoinGroupCall({this.groupCallId, this.payload, this.source, this.isMuted});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [payload] Group join payload, received from tgcalls. Use null to cancel previous joinGroupCall request
  GroupCallPayload payload;

  /// [source] Caller synchronization source identifier; received from tgcalls
  int source;

  /// [isMuted] True, if the user's microphone is muted
  bool isMuted;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  JoinGroupCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "payload": this.payload == null ? null : this.payload.toJson(),
      "source": this.source,
      "is_muted": this.isMuted,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'joinGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
