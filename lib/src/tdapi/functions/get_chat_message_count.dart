part of '../tdapi.dart';

class GetChatMessageCount extends TLFunction {
  int chatId;
  var filter;
  bool returnLocal;
  dynamic extra;

  /// Returns approximate number of messages of the specified type in the chat.
  ///[chatId] Identifier of the chat in which to count messages .
  /// [filter] Filter for message content; searchMessagesFilterEmpty is unsupported in this function .
  /// [returnLocal] If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
  GetChatMessageCount({this.chatId, this.filter, this.returnLocal});

  /// Parse from a json
  GetChatMessageCount.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "filter": this.filter.toJson(),
      "return_local": this.returnLocal,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getChatMessageCount";

  @override
  String getConstructor() => CONSTRUCTOR;
}
