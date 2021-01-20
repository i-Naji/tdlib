part of '../tdapi.dart';

class SetGroupCallParticipantIsSpeaking extends TdFunction {
  /// Informs TDLib that a group call participant speaking state has changed
  SetGroupCallParticipantIsSpeaking(
      {this.groupCallId, this.source, this.isSpeaking});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [source] Group call participant's synchronization source identifier, or 0 for the current user
  int source;

  /// [isSpeaking] True, if the user is speaking
  bool isSpeaking;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetGroupCallParticipantIsSpeaking.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "source": this.source,
      "is_speaking": this.isSpeaking,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setGroupCallParticipantIsSpeaking';

  @override
  String getConstructor() => CONSTRUCTOR;
}
