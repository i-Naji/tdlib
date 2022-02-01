part of '../tdapi.dart';

class ToggleGroupCallScreenSharingIsPaused extends TdFunction {

  /// Pauses or unpauses screen sharing in a joined group call
  const ToggleGroupCallScreenSharingIsPaused({
    required this.groupCallId,
    required this.isPaused,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [isPaused] True if screen sharing is paused
  final bool isPaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "is_paused": isPaused,
      "@extra": extra,
    };
  }
  
  ToggleGroupCallScreenSharingIsPaused copyWith({
    int? groupCallId,
    bool? isPaused,
  }) => ToggleGroupCallScreenSharingIsPaused(
    groupCallId: groupCallId ?? this.groupCallId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const CONSTRUCTOR = 'toggleGroupCallScreenSharingIsPaused';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
