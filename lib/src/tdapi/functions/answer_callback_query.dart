part of '../tdapi.dart';

class AnswerCallbackQuery extends TdFunction {
  /// Sets the result of a callback query; for bots only
  AnswerCallbackQuery(
      {this.callbackQueryId,
      this.text,
      this.showAlert,
      this.url,
      this.cacheTime});

  /// [callbackQueryId] Identifier of the callback query
  int callbackQueryId;

  /// [text] Text of the answer
  String text;

  /// [showAlert] If true, an alert should be shown to the user instead of a toast notification
  bool showAlert;

  /// [url] URL to be opened
  String url;

  /// [cacheTime] Time during which the result of the query can be cached, in seconds
  int cacheTime;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AnswerCallbackQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "callback_query_id": this.callbackQueryId,
      "text": this.text,
      "show_alert": this.showAlert,
      "url": this.url,
      "cache_time": this.cacheTime,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
