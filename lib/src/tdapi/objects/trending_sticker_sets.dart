part of '../tdapi.dart';

class TrendingStickerSets extends TdObject {
  /// Represents a list of trending sticker sets
  const TrendingStickerSets({
    required this.totalCount,
    required this.sets,
    required this.isPremium,
    this.extra,
    this.clientId,
  });

  /// [totalCount] Approximate total number of trending sticker sets
  final int totalCount;

  /// [sets] List of trending sticker sets
  final List<StickerSetInfo> sets;

  /// [isPremium] True, if the list contains sticker sets with premium stickers
  final bool isPremium;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory TrendingStickerSets.fromJson(Map<String, dynamic> json) =>
      TrendingStickerSets(
        totalCount: json['total_count'],
        sets: List<StickerSetInfo>.from((json['sets'] ?? [])
            .map((item) => StickerSetInfo.fromJson(item))
            .toList()),
        isPremium: json['is_premium'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "sets": sets.map((i) => i.toJson()).toList(),
      "is_premium": isPremium,
    };
  }

  TrendingStickerSets copyWith({
    int? totalCount,
    List<StickerSetInfo>? sets,
    bool? isPremium,
    dynamic extra,
    int? clientId,
  }) =>
      TrendingStickerSets(
        totalCount: totalCount ?? this.totalCount,
        sets: sets ?? this.sets,
        isPremium: isPremium ?? this.isPremium,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'trendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
