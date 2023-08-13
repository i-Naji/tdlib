part of '../tdapi.dart';

class GetGroupCallStreams extends TdFunction {
  /// Returns information about available group call streams
  const GetGroupCallStreams({
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

  GetGroupCallStreams copyWith({
    int? groupCallId,
  }) =>
      GetGroupCallStreams(
        groupCallId: groupCallId ?? this.groupCallId,
      );

  static const CONSTRUCTOR = 'getGroupCallStreams';

  @override
  String getConstructor() => CONSTRUCTOR;
}
