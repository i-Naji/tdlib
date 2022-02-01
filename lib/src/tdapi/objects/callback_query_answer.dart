part of '../tdapi.dart';

class CallbackQueryAnswer extends TdObject {

  /// Contains a bot's answer to a callback query
  const CallbackQueryAnswer({
    required this.text,
    required this.showAlert,
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// [text] Text of the answer 
  final String text;

  /// [showAlert] True, if an alert must be shown to the user instead of a toast notification 
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CallbackQueryAnswer.fromJson(Map<String, dynamic> json) => CallbackQueryAnswer(
    text: json['text'],
    showAlert: json['show_alert'],
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "show_alert": showAlert,
      "url": url,
    };
  }
  
  CallbackQueryAnswer copyWith({
    String? text,
    bool? showAlert,
    String? url,
    dynamic extra,
    int? clientId,
  }) => CallbackQueryAnswer(
    text: text ?? this.text,
    showAlert: showAlert ?? this.showAlert,
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'callbackQueryAnswer';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
