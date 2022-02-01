part of '../tdapi.dart';

class GetLoginUrl extends TdFunction {

  /// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button
  const GetLoginUrl({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.allowWriteAccess,
  });
  
  /// [chatId] Chat identifier of the message with the button
  final int chatId;

  /// [messageId] Message identifier of the message with the button 
  final int messageId;

  /// [buttonId] Button identifier
  final int buttonId;

  /// [allowWriteAccess] True, if the user allowed the bot to send them messages
  final bool allowWriteAccess;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "allow_write_access": allowWriteAccess,
      "@extra": extra,
    };
  }
  
  GetLoginUrl copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
    bool? allowWriteAccess,
  }) => GetLoginUrl(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
    allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
  );

  static const CONSTRUCTOR = 'getLoginUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
