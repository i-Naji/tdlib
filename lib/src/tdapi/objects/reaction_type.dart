part of '../tdapi.dart';

class ReactionType extends TdObject {
  /// Describes type of message reaction
  const ReactionType();

  /// a ReactionType return type can be :
  /// * [ReactionTypeEmoji]
  /// * [ReactionTypeCustomEmoji]
  factory ReactionType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReactionTypeEmoji.CONSTRUCTOR:
        return ReactionTypeEmoji.fromJson(json);
      case ReactionTypeCustomEmoji.CONSTRUCTOR:
        return ReactionTypeCustomEmoji.fromJson(json);
      default:
        return const ReactionType();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ReactionType copyWith() => const ReactionType();

  static const CONSTRUCTOR = 'reactionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReactionTypeEmoji extends ReactionType {
  /// A reaction with an emoji
  const ReactionTypeEmoji({
    required this.emoji,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  /// Parse from a json
  factory ReactionTypeEmoji.fromJson(Map<String, dynamic> json) =>
      ReactionTypeEmoji(
        emoji: json['emoji'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
    };
  }

  @override
  ReactionTypeEmoji copyWith({
    String? emoji,
  }) =>
      ReactionTypeEmoji(
        emoji: emoji ?? this.emoji,
      );

  static const CONSTRUCTOR = 'reactionTypeEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReactionTypeCustomEmoji extends ReactionType {
  /// A reaction with a custom emoji
  const ReactionTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  /// Parse from a json
  factory ReactionTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      ReactionTypeCustomEmoji(
        customEmojiId: int.parse(json['custom_emoji_id']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_id": customEmojiId,
    };
  }

  @override
  ReactionTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) =>
      ReactionTypeCustomEmoji(
        customEmojiId: customEmojiId ?? this.customEmojiId,
      );

  static const CONSTRUCTOR = 'reactionTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
