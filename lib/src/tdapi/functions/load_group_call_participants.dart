part of '../tdapi.dart';

class LoadGroupCallParticipants extends TdFunction {
  /// Loads more group call participants. The loaded participants will be received through updates. Use the field groupCall.loaded_all_participants to check whether all participants has already been loaded
  LoadGroupCallParticipants({this.groupCallId, this.limit});

  /// [groupCallId] Group call identifier. The group call must be previously received through getGroupCall and must be joined or being joined
  int groupCallId;

  /// [limit] Maximum number of participants to load
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  LoadGroupCallParticipants.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'loadGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}
