part of '../tdapi.dart';

class StartScheduledGroupCall extends TdFunction {

  /// Starts a scheduled group call
  const StartScheduledGroupCall({
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
  
  StartScheduledGroupCall copyWith({
    int? groupCallId,
  }) => StartScheduledGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'startScheduledGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
