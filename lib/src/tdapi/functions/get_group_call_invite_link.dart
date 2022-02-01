part of '../tdapi.dart';

class GetGroupCallInviteLink extends TdFunction {

  /// Returns invite link to a video chat in a public chat
  const GetGroupCallInviteLink({
    required this.groupCallId,
    required this.canSelfUnmute,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [canSelfUnmute] Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag
  final bool canSelfUnmute;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "can_self_unmute": canSelfUnmute,
      "@extra": extra,
    };
  }
  
  GetGroupCallInviteLink copyWith({
    int? groupCallId,
    bool? canSelfUnmute,
  }) => GetGroupCallInviteLink(
    groupCallId: groupCallId ?? this.groupCallId,
    canSelfUnmute: canSelfUnmute ?? this.canSelfUnmute,
  );

  static const CONSTRUCTOR = 'getGroupCallInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
