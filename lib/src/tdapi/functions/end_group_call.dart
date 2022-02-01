part of '../tdapi.dart';

class EndGroupCall extends TdFunction {

  /// Ends a group call. Requires groupCall.can_be_managed
  const EndGroupCall({
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
  
  EndGroupCall copyWith({
    int? groupCallId,
  }) => EndGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'endGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
