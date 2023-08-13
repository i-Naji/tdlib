part of '../tdapi.dart';

class ForumTopicIcon extends TdObject {
  /// Describes a forum topic icon
  const ForumTopicIcon({
    required this.color,
    required this.customEmojiId,
  });

  /// [color] Color of the topic icon in RGB format
  final int color;

  /// [customEmojiId] Unique identifier of the custom emoji shown on the topic icon; 0 if none
  final int customEmojiId;

  /// Parse from a json
  factory ForumTopicIcon.fromJson(Map<String, dynamic> json) => ForumTopicIcon(
        color: json['color'],
        customEmojiId: int.tryParse(json['custom_emoji_id'] ?? "") ?? 0,
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "color": color,
      "custom_emoji_id": customEmojiId,
    };
  }

  ForumTopicIcon copyWith({
    int? color,
    int? customEmojiId,
  }) =>
      ForumTopicIcon(
        color: color ?? this.color,
        customEmojiId: customEmojiId ?? this.customEmojiId,
      );

  static const CONSTRUCTOR = 'forumTopicIcon';

  @override
  String getConstructor() => CONSTRUCTOR;
}
