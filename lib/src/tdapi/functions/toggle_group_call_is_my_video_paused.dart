part of '../tdapi.dart';

class ToggleGroupCallIsMyVideoPaused extends TdFunction {

  /// Toggles whether current user's video is paused
  const ToggleGroupCallIsMyVideoPaused({
    required this.groupCallId,
    required this.isMyVideoPaused,
  });
  
  /// [groupCallId] Group call identifier 
  final int groupCallId;

  /// [isMyVideoPaused] Pass true if the current user's video is paused
  final bool isMyVideoPaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "is_my_video_paused": isMyVideoPaused,
      "@extra": extra,
    };
  }
  
  ToggleGroupCallIsMyVideoPaused copyWith({
    int? groupCallId,
    bool? isMyVideoPaused,
  }) => ToggleGroupCallIsMyVideoPaused(
    groupCallId: groupCallId ?? this.groupCallId,
    isMyVideoPaused: isMyVideoPaused ?? this.isMyVideoPaused,
  );

  static const CONSTRUCTOR = 'toggleGroupCallIsMyVideoPaused';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
