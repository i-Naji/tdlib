part of '../tdapi.dart';

class RevokeGroupCallInviteLink extends TdFunction {

  /// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag
  const RevokeGroupCallInviteLink({
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
  
  RevokeGroupCallInviteLink copyWith({
    int? groupCallId,
  }) => RevokeGroupCallInviteLink(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'revokeGroupCallInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
