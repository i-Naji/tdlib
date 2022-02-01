part of '../tdapi.dart';

class LeaveGroupCall extends TdFunction {

  /// Leaves a group call
  const LeaveGroupCall({
    required this.groupCallId,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }
  
  LeaveGroupCall copyWith({
    int? groupCallId,
  }) => LeaveGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'leaveGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
