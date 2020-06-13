part of '../tdapi.dart';

class GetChatStatisticsGraph extends TdFunction {
  int chatId;
  String token;
  int x;
  dynamic extra;

  /// Loads asynchronous or zoomed in chat statistics graph. 
  /// [chatId] Chat identifier . 
  /// [token] The token for graph loading . 
  /// [x] X-value for zoomed in graph or 0 otherwise
  GetChatStatisticsGraph({this.chatId,
    this.token,
    this.x});

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
}