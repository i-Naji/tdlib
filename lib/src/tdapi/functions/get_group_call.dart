part of '../tdapi.dart';

class GetGroupCall extends TdFunction {
  /// Returns information about a group call
  GetGroupCall({this.groupCallId});

  /// [groupCallId] Group call identifier
  int groupCallId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetGroupCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
