part of '../tdapi.dart';

class ToggleGroupCallMuteNewParticipants extends TdFunction {
  /// Toggles whether new participants of a group call can be unmuted only by administrators of the group call. Requires can_manage_voice_chats rights in the corresponding chat and allowed_change_mute_mew_participants group call flag
  ToggleGroupCallMuteNewParticipants(
      {this.groupCallId, this.muteNewParticipants});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// [muteNewParticipants] New value of the mute_new_participants setting
  bool muteNewParticipants;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ToggleGroupCallMuteNewParticipants.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "mute_new_participants": this.muteNewParticipants,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleGroupCallMuteNewParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
