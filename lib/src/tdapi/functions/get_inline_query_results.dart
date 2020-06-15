part of '../tdapi.dart';

class GetInlineQueryResults extends TdFunction {
  int botUserId;
  int chatId;
  Location userLocation;
  String query;
  String offset;
  dynamic extra;

  /// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires. 
  /// [botUserId] The identifier of the target bot. 
  /// [chatId] Identifier of the chat where the query was sent. 
  /// [userLocation] Location of the user, only if needed . 
  /// [query] Text of the query . 
  /// [offset] Offset of the first entry to return
  GetInlineQueryResults({this.botUserId,
    this.chatId,
    this.userLocation,
    this.query,
    this.offset});

  /// Parse from a json
  GetInlineQueryResults.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "chat_id": this.chatId,
      "user_location": this.userLocation.toJson(),
      "query": this.query,
      "offset": this.offset,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInlineQueryResults';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}