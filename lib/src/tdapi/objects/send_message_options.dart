part of '../tdapi.dart';

class SendMessageOptions extends TdObject {
  bool disableNotification;
  bool fromBackground;
  MessageSchedulingState schedulingState;

  /// Options to be used when a message is send. 
  /// [disableNotification] Pass true to disable notification for the message. Must be false if the message is sent to a secret chat. 
  /// [fromBackground] Pass true if the message is sent from the background. 
  /// [schedulingState] Message scheduling state. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  SendMessageOptions({this.disableNotification,
    this.fromBackground,
    this.schedulingState});

  /// Parse from a json
  SendMessageOptions.fromJson(Map<String, dynamic> json)  {
    this.disableNotification = json['disable_notification'];
    this.fromBackground = json['from_background'];
    this.schedulingState = MessageSchedulingState.fromJson(json['scheduling_state'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "disable_notification": this.disableNotification,
      "from_background": this.fromBackground,
      "scheduling_state": this.schedulingState.toJson(),
    };
  }

  static const CONSTRUCTOR = 'sendMessageOptions';
}