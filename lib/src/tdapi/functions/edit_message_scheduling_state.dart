part of '../tdapi.dart';

class EditMessageSchedulingState extends TdFunction {
  int chatId;
  int messageId;
  MessageSchedulingState schedulingState;
  dynamic extra;

  /// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed. 
  /// [chatId] The chat the message belongs to . 
  /// [messageId] Identifier of the message . 
  /// [schedulingState] The new message scheduling state. Pass null to send the message immediately
  EditMessageSchedulingState({this.chatId,
    this.messageId,
    this.schedulingState});

  /// Parse from a json
  EditMessageSchedulingState.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "scheduling_state": this.schedulingState.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageSchedulingState';
}