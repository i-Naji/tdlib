part of '../tdapi.dart';

class LeaveGroupCall extends TdFunction {
  /// Leaves a group call
  LeaveGroupCall({this.groupCallId});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  LeaveGroupCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'leaveGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
