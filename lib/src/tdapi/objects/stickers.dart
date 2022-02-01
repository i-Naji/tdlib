part of '../tdapi.dart';

class Stickers extends TdObject {

  /// Represents a list of stickers
  const Stickers({
    required this.stickers,
    this.extra,
    this.clientId,
  });
  
  /// [stickers] List of stickers
  final List<Sticker> stickers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Stickers.fromJson(Map<String, dynamic> json) => Stickers(
    stickers: List<Sticker>.from((json['stickers'] ?? []).map((item) => Sticker.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "stickers": stickers.map((i) => i.toJson()).toList(),
    };
  }
  
  Stickers copyWith({
    List<Sticker>? stickers,
    dynamic extra,
    int? clientId,
  }) => Stickers(
    stickers: stickers ?? this.stickers,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'stickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
