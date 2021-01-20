part of '../tdapi.dart';

class DiscardGroupCall extends TdFunction {
  /// Discards a group call. Requires can_manage_voice_chats rights in the corresponding chat
  DiscardGroupCall({this.groupCallId});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DiscardGroupCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'discardGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
