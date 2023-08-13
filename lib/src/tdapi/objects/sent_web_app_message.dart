part of '../tdapi.dart';

class SentWebAppMessage extends TdObject {
  /// Information about the message sent by answerWebAppQuery
  const SentWebAppMessage({
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) =>
      SentWebAppMessage(
        inlineMessageId: json['inline_message_id'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": inlineMessageId,
    };
  }

  SentWebAppMessage copyWith({
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) =>
      SentWebAppMessage(
        inlineMessageId: inlineMessageId ?? this.inlineMessageId,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'sentWebAppMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
