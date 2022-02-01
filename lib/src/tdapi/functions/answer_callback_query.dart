part of '../tdapi.dart';

class AnswerCallbackQuery extends TdFunction {

  /// Sets the result of a callback query; for bots only
  const AnswerCallbackQuery({
    required this.callbackQueryId,
    required this.text,
    required this.showAlert,
    required this.url,
    required this.cacheTime,
  });
  
  /// [callbackQueryId] Identifier of the callback query 
  final int callbackQueryId;

  /// [text] Text of the answer 
  final String text;

  /// [showAlert] If true, an alert must be shown to the user instead of a toast notification 
  final bool showAlert;

  /// [url] URL to be opened 
  final String url;

  /// [cacheTime] Time during which the result of the query can be cached, in seconds
  final int cacheTime;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "callback_query_id": callbackQueryId,
      "text": text,
      "show_alert": showAlert,
      "url": url,
      "cache_time": cacheTime,
      "@extra": extra,
    };
  }
  
  AnswerCallbackQuery copyWith({
    int? callbackQueryId,
    String? text,
    bool? showAlert,
    String? url,
    int? cacheTime,
  }) => AnswerCallbackQuery(
    callbackQueryId: callbackQueryId ?? this.callbackQueryId,
    text: text ?? this.text,
    showAlert: showAlert ?? this.showAlert,
    url: url ?? this.url,
    cacheTime: cacheTime ?? this.cacheTime,
  );

  static const CONSTRUCTOR = 'answerCallbackQuery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
