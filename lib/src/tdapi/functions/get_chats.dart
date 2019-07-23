part of '../tdapi.dart';

class GetChats extends TdFunction {
  int offsetOrder;
  int offsetChatId;
  int limit;
  dynamic extra;

  /// Returns an ordered list of chats. Chats are sorted by the pair (order, chat_id) in decreasing order. (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed 64-bit number 9223372036854775807 . For optimal performance the number of returned chats is chosen by the library..
  ///[offsetOrder] Chat order to return chats from .
  /// [offsetChatId] Chat identifier to return chats from.
  /// [limit] The maximum number of chats to be returned. It is possible that fewer chats than the limit are returned even if the end of the list is not reached
  GetChats({this.offsetOrder, this.offsetChatId, this.limit});

  /// Parse from a json
  GetChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset_order": this.offsetOrder,
      "offset_chat_id": this.offsetChatId,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
