part of '../tdapi.dart';

class GetStatisticalGraph extends TdFunction {

  /// Loads an asynchronous or a zoomed in statistical graph
  const GetStatisticalGraph({
    required this.chatId,
    required this.token,
    required this.x,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [token] The token for graph loading 
  final String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  final int x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "token": token,
      "x": x,
      "@extra": extra,
    };
  }
  
  GetStatisticalGraph copyWith({
    int? chatId,
    String? token,
    int? x,
  }) => GetStatisticalGraph(
    chatId: chatId ?? this.chatId,
    token: token ?? this.token,
    x: x ?? this.x,
  );

  static const CONSTRUCTOR = 'getStatisticalGraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
