part of '../tdapi.dart';

class SetChatSlowModeDelay extends TdFunction {
  int chatId;
  int slowModeDelay;
  dynamic extra;

  /// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights. 
  /// [chatId] Chat identifier . 
  /// [slowModeDelay] New slow mode delay for the chat; must be one of 0, 10, 30, 60, 300, 900, 3600
  SetChatSlowModeDelay({this.chatId,
    this.slowModeDelay});

  /// Parse from a json
  SetChatSlowModeDelay.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "slow_mode_delay": this.slowModeDelay,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatSlowModeDelay';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}