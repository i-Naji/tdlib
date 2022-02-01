part of '../tdapi.dart';

class Emojis extends TdObject {

  /// Represents a list of emoji
  const Emojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// [emojis] List of emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Emojis.fromJson(Map<String, dynamic> json) => Emojis(
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis.map((i) => i).toList(),
    };
  }
  
  Emojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => Emojis(
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'emojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
