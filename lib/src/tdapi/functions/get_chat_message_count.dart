part of '../tdapi.dart';

class GetChatMessageCount extends TdFunction {
  /// Returns approximate number of messages of the specified type in the chat
  GetChatMessageCount({this.chatId, this.filter, this.returnLocal});

  /// [chatId] Identifier of the chat in which to count messages
  int chatId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  SearchMessagesFilter filter;

  /// [returnLocal] If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
  bool returnLocal;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatMessageCount.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "return_local": this.returnLocal,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
