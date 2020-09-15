part of '../tdapi.dart';

class GetChatStatisticsGraph extends TdFunction {

  /// Loads asynchronous or zoomed in chat statistics graph
  GetChatStatisticsGraph({this.chatId,
    this.token,
    this.x});

  /// [chatId] Chat identifier 
  int chatId;

  /// [token] The token for graph loading 
  String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  int x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatStatisticsGraph.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "token": this.token,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatStatisticsGraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}