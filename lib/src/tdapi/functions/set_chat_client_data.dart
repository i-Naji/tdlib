part of '../tdapi.dart';

class SetChatClientData extends TLFunction {
  int chatId;
  String clientData;
  dynamic extra;

  /// Changes client data associated with a chat.
  ///[chatId] Chat identifier .
  /// [clientData] New value of client_data
  SetChatClientData({this.chatId, this.clientData});

  /// Parse from a json
  SetChatClientData.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'chat_id': this.chatId,
      'client_data': this.clientData,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'setChatClientData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
