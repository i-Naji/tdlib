part of '../tdapi.dart';

class Text extends TdObject {

  /// Contains some text
  const Text({
    required this.text,
    this.extra,
    this.clientId,
  });
  
  /// [text] Text
  final String text;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Text.fromJson(Map<String, dynamic> json) => Text(
    text: json['text'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
    };
  }
  
  Text copyWith({
    String? text,
    dynamic extra,
    int? clientId,
  }) => Text(
    text: text ?? this.text,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'text';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
