part of '../tdapi.dart';

class CallbackQueryAnswer extends TdObject {
  /// Contains a bot's answer to a callback query
  CallbackQueryAnswer({this.text, this.showAlert, this.url});

  /// [text] Text of the answer
  String text;

  /// [showAlert] True, if an alert should be shown to the user instead of a toast notification
  bool showAlert;

  /// [url] URL to be opened
  String url;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CallbackQueryAnswer.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.showAlert = json['show_alert'];
    this.url = json['url'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "show_alert": this.showAlert,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'callbackQueryAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
