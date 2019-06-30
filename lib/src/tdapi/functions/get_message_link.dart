part of '../tdapi.dart';

class GetMessageLink extends TLFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Returns a private HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. The link will work only for members of the chat.
  ///[chatId] Identifier of the chat to which the message belongs.
  /// [messageId] Identifier of the message
  GetMessageLink({this.chatId, this.messageId});

  /// Parse from a json
  GetMessageLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'message_id': this.messageId,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'getMessageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
