part of '../tdapi.dart';

class GetChatMessageCount extends TdFunction {

  /// Returns approximate number of messages of the specified type in the chat
  const GetChatMessageCount({
    required this.chatId,
    required this.filter,
    required this.returnLocal,
  });
  
  /// [chatId] Identifier of the chat in which to count messages 
  final int chatId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty is unsupported in this function 
  final SearchMessagesFilter filter;

  /// [returnLocal] If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
  final bool returnLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "return_local": returnLocal,
      "@extra": extra,
    };
  }
  
  GetChatMessageCount copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    bool? returnLocal,
  }) => GetChatMessageCount(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    returnLocal: returnLocal ?? this.returnLocal,
  );

  static const CONSTRUCTOR = 'getChatMessageCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
