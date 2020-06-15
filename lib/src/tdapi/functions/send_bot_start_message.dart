part of '../tdapi.dart';

class SendBotStartMessage extends TdFunction {
  int botUserId;
  int chatId;
  String parameter;
  dynamic extra;

  /// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message. 
  /// [botUserId] Identifier of the bot. 
  /// [chatId] Identifier of the target chat . 
  /// [parameter] A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
  SendBotStartMessage({this.botUserId,
    this.chatId,
    this.parameter});

  /// Parse from a json
  SendBotStartMessage.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "chat_id": this.chatId,
      "parameter": this.parameter,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendBotStartMessage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}