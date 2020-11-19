part of '../tdapi.dart';

class SearchMessages extends TdFunction {
  /// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).. For optimal performance the number of returned messages is chosen by the library
  SearchMessages(
      {this.chatList,
      this.query,
      this.offsetDate,
      this.offsetChatId,
      this.offsetMessageId,
      this.limit,
      this.filter,
      this.minDate,
      this.maxDate});

  /// [chatList] Chat list in which to search messages; pass null to search in all chats regardless of their chat list
  ChatList chatList;

  /// [query] Query to search for
  String query;

  /// [offsetDate] The date of the message starting from which the results should be fetched. Use 0 or any date in the future to get results from the last message
  int offsetDate;

  /// [offsetChatId] The chat identifier of the last found message, or 0 for the first request
  int offsetChatId;

  /// [offsetMessageId] The message identifier of the last found message, or 0 for the first request
  int offsetMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  int limit;

  /// [filter] Filter for message content in the search results; searchMessagesFilterCall, searchMessagesFilterMissedCall, searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterFailedToSend and searchMessagesFilterPinned are unsupported in this function
  SearchMessagesFilter filter;

  /// [minDate] If not 0, the minimum date of the messages to return
  int minDate;

  /// [maxDate] If not 0, the maximum date of the messages to return
  int maxDate;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SearchMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList == null ? null : this.chatList.toJson(),
      "query": this.query,
      "offset_date": this.offsetDate,
      "offset_chat_id": this.offsetChatId,
      "offset_message_id": this.offsetMessageId,
      "limit": this.limit,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "min_date": this.minDate,
      "max_date": this.maxDate,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
