part of '../tdapi.dart';

class GetStickers extends TdFunction {

  /// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is non-empty, favorite and recently used stickers may also be returned
  const GetStickers({
    required this.emoji,
    required this.limit,
  });
  
  /// [emoji] String representation of emoji. If empty, returns all known installed stickers 
  final String emoji;

  /// [limit] The maximum number of stickers to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetStickers copyWith({
    String? emoji,
    int? limit,
  }) => GetStickers(
    emoji: emoji ?? this.emoji,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
