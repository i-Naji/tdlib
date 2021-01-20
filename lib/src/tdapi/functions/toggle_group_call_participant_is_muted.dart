part of '../tdapi.dart';

class ToggleGroupCallParticipantIsMuted extends TdFunction {
  /// Toggles whether a group call participant is muted, unmuted, or allowed to unmute themself
  ToggleGroupCallParticipantIsMuted(
      {this.groupCallId, this.userId, this.isMuted});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [userId] User identifier
  int userId;

  /// [isMuted] Pass true if the user must be muted and false otherwise
  bool isMuted;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ToggleGroupCallParticipantIsMuted.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_id": this.userId,
      "is_muted": this.isMuted,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => CONSTRUCTOR;
}
