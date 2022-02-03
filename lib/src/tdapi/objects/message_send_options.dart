part of '../tdapi.dart';

class MessageSendOptions extends TdObject {

  /// Options to be used when a message is sent
  const MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    required this.protectContent,
    this.schedulingState,
  });
  
  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected from forwarding and saving; for bots only
  final bool protectContent;

  /// [schedulingState] Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;
  
  /// Parse from a json
  factory MessageSendOptions.fromJson(Map<String, dynamic> json) => MessageSendOptions(
    disableNotification: json['disable_notification'],
    fromBackground: json['from_background'],
    protectContent: json['protect_content'],
    schedulingState: json['scheduling_state'] == null ? null : MessageSchedulingState.fromJson(json['scheduling_state']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "disable_notification": disableNotification,
      "from_background": fromBackground,
      "protect_content": protectContent,
      "scheduling_state": schedulingState?.toJson(),
    };
  }
  
  MessageSendOptions copyWith({
    bool? disableNotification,
    bool? fromBackground,
    bool? protectContent,
    MessageSchedulingState? schedulingState,
  }) => MessageSendOptions(
    disableNotification: disableNotification ?? this.disableNotification,
    fromBackground: fromBackground ?? this.fromBackground,
    protectContent: protectContent ?? this.protectContent,
    schedulingState: schedulingState ?? this.schedulingState,
  );

  static const CONSTRUCTOR = 'messageSendOptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
