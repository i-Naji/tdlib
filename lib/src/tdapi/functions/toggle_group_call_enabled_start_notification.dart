part of '../tdapi.dart';

class ToggleGroupCallEnabledStartNotification extends TdFunction {

  /// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only
  const ToggleGroupCallEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [enabledStartNotification] New value of the enabled_start_notification setting
  final bool enabledStartNotification;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "enabled_start_notification": enabledStartNotification,
      "@extra": extra,
    };
  }
  
  ToggleGroupCallEnabledStartNotification copyWith({
    int? groupCallId,
    bool? enabledStartNotification,
  }) => ToggleGroupCallEnabledStartNotification(
    groupCallId: groupCallId ?? this.groupCallId,
    enabledStartNotification: enabledStartNotification ?? this.enabledStartNotification,
  );

  static const CONSTRUCTOR = 'toggleGroupCallEnabledStartNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
