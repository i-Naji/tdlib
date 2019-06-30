part of '../tdapi.dart';

class CallbackQueryAnswer implements TLObject {
  String text;
  bool showAlert;
  String url;
  dynamic extra;

  /// Contains a bot's answer to a callback query.
  ///[text] Text of the answer .
  /// [showAlert] True, if an alert should be shown to the user instead of a toast notification .
  /// [url] URL to be opened
  CallbackQueryAnswer({this.text, this.showAlert, this.url});

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
      '@type': CONSTRUCTOR,
      'text': this.text,
      'show_alert': this.showAlert,
      'url': this.url
    };
  }

  static const String CONSTRUCTOR = 'callbackQueryAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
