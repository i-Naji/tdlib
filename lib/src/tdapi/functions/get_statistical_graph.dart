part of '../tdapi.dart';

class GetStatisticalGraph extends TdFunction {
  /// Loads an asynchronous or a zoomed in statistical graph
  GetStatisticalGraph({this.chatId, this.token, this.x});

  /// [chatId] Chat identifier
  int chatId;

  /// [token] The token for graph loading
  String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  int x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetStatisticalGraph.fromJson(Map<String, dynamic> json);

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

  static const CONSTRUCTOR = 'getStatisticalGraph';

  @override
  String getConstructor() => CONSTRUCTOR;
}
