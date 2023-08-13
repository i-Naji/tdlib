part of '../tdapi.dart';

class EmojiStatuses extends TdObject {
  /// Contains a list of custom emoji identifiers, which can be set as emoji statuses
  const EmojiStatuses({
    required this.customEmojiIds,
    this.extra,
    this.clientId,
  });

  /// [customEmojiIds] The list of custom emoji identifiers
  final List<int> customEmojiIds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory EmojiStatuses.fromJson(Map<String, dynamic> json) => EmojiStatuses(
        customEmojiIds: List<int>.from(
            (json['custom_emoji_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "custom_emoji_ids": customEmojiIds.map((i) => i).toList(),
    };
  }

  EmojiStatuses copyWith({
    List<int>? customEmojiIds,
    dynamic extra,
    int? clientId,
  }) =>
      EmojiStatuses(
        customEmojiIds: customEmojiIds ?? this.customEmojiIds,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'emojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
