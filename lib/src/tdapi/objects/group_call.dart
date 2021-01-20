part of '../tdapi.dart';

class GroupCall extends TdObject {
  /// Describes a group call
  GroupCall(
      {this.id,
      this.isActive,
      this.isJoined,
      this.needRejoin,
      this.canUnmuteSelf,
      this.canBeManaged,
      this.participantCount,
      this.loadedAllParticipants,
      this.recentSpeakers,
      this.muteNewParticipants,
      this.allowedChangeMuteNewParticipants,
      this.duration});

  /// [id] Group call identifier
  int id;

  /// [isActive] True, if the call is active
  bool isActive;

  /// [isJoined] True, if the call is joined
  bool isJoined;

  /// [needRejoin] True, if user was kicked from the call because of network loss and the call needs to be rejoined
  bool needRejoin;

  /// [canUnmuteSelf] True, if the current user can unmute themself
  bool canUnmuteSelf;

  /// [canBeManaged] True, if the current user can manage the group call
  bool canBeManaged;

  /// [participantCount] Number of participants in the group call
  int participantCount;

  /// [loadedAllParticipants] True, if all group call participants are loaded
  bool loadedAllParticipants;

  /// [recentSpeakers] Recently speaking users in the group call
  List<GroupCallRecentSpeaker> recentSpeakers;

  /// [muteNewParticipants] True, if only group call administrators can unmute new participants
  bool muteNewParticipants;

  /// [allowedChangeMuteNewParticipants] True, if group call administrators can enable or disable mute_new_participants setting
  bool allowedChangeMuteNewParticipants;

  /// [duration] Call duration; for ended calls only
  int duration;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GroupCall.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.isActive = json['is_active'];
    this.isJoined = json['is_joined'];
    this.needRejoin = json['need_rejoin'];
    this.canUnmuteSelf = json['can_unmute_self'];
    this.canBeManaged = json['can_be_managed'];
    this.participantCount = json['participant_count'];
    this.loadedAllParticipants = json['loaded_all_participants'];
    this.recentSpeakers = List<GroupCallRecentSpeaker>.from(
        (json['recent_speakers'] ?? [])
            .map((item) =>
                GroupCallRecentSpeaker.fromJson(item ?? <String, dynamic>{}))
            .toList());
    this.muteNewParticipants = json['mute_new_participants'];
    this.allowedChangeMuteNewParticipants =
        json['allowed_change_mute_new_participants'];
    this.duration = json['duration'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_active": this.isActive,
      "is_joined": this.isJoined,
      "need_rejoin": this.needRejoin,
      "can_unmute_self": this.canUnmuteSelf,
      "can_be_managed": this.canBeManaged,
      "participant_count": this.participantCount,
      "loaded_all_participants": this.loadedAllParticipants,
      "recent_speakers": this.recentSpeakers.map((i) => i.toJson()).toList(),
      "mute_new_participants": this.muteNewParticipants,
      "allowed_change_mute_new_participants":
          this.allowedChangeMuteNewParticipants,
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'groupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
