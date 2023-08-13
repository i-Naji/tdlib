part of '../tdapi.dart';

class BotMenuButton extends TdObject {
  /// Describes a button to be shown instead of bot commands menu button
  const BotMenuButton({
    required this.text,
    required this.url,
    this.extra,
    this.clientId,
  });

  /// [text] Text of the button
  final String text;

  /// [url] URL to be passed to openWebApp
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory BotMenuButton.fromJson(Map<String, dynamic> json) => BotMenuButton(
        text: json['text'],
        url: json['url'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "url": url,
    };
  }

  BotMenuButton copyWith({
    String? text,
    String? url,
    dynamic extra,
    int? clientId,
  }) =>
      BotMenuButton(
        text: text ?? this.text,
        url: url ?? this.url,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'botMenuButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
