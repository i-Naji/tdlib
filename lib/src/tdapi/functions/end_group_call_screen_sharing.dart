part of '../tdapi.dart';

class EndGroupCallScreenSharing extends TdFunction {

  /// Ends screen sharing in a joined group call
  const EndGroupCallScreenSharing({
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
  
  EndGroupCallScreenSharing copyWith({
    int? groupCallId,
  }) => EndGroupCallScreenSharing(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const CONSTRUCTOR = 'endGroupCallScreenSharing';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
