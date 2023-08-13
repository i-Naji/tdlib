part of '../tdapi.dart';

class AvailableReactions extends TdObject {
  /// Represents a list of reactions that can be added to a message
  const AvailableReactions({
    required this.topReactions,
    required this.recentReactions,
    required this.popularReactions,
    required this.allowCustomEmoji,
    this.extra,
    this.clientId,
  });

  /// [topReactions] List of reactions to be shown at the top
  final List<AvailableReaction> topReactions;

  /// [recentReactions] List of recently used reactions
  final List<AvailableReaction> recentReactions;

  /// [popularReactions] List of popular reactions
  final List<AvailableReaction> popularReactions;

  /// [allowCustomEmoji] True, if custom emoji reactions could be added by Telegram Premium subscribers
  final bool allowCustomEmoji;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AvailableReactions.fromJson(Map<String, dynamic> json) =>
      AvailableReactions(
        topReactions: List<AvailableReaction>.from((json['top_reactions'] ?? [])
            .map((item) => AvailableReaction.fromJson(item))
            .toList()),
        recentReactions: List<AvailableReaction>.from(
            (json['recent_reactions'] ?? [])
                .map((item) => AvailableReaction.fromJson(item))
                .toList()),
        popularReactions: List<AvailableReaction>.from(
            (json['popular_reactions'] ?? [])
                .map((item) => AvailableReaction.fromJson(item))
                .toList()),
        allowCustomEmoji: json['allow_custom_emoji'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "top_reactions": topReactions.map((i) => i.toJson()).toList(),
      "recent_reactions": recentReactions.map((i) => i.toJson()).toList(),
      "popular_reactions": popularReactions.map((i) => i.toJson()).toList(),
      "allow_custom_emoji": allowCustomEmoji,
    };
  }

  AvailableReactions copyWith({
    List<AvailableReaction>? topReactions,
    List<AvailableReaction>? recentReactions,
    List<AvailableReaction>? popularReactions,
    bool? allowCustomEmoji,
    dynamic extra,
    int? clientId,
  }) =>
      AvailableReactions(
        topReactions: topReactions ?? this.topReactions,
        recentReactions: recentReactions ?? this.recentReactions,
        popularReactions: popularReactions ?? this.popularReactions,
        allowCustomEmoji: allowCustomEmoji ?? this.allowCustomEmoji,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'availableReactions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
