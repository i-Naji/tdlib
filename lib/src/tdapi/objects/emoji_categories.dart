part of '../tdapi.dart';

class EmojiCategories extends TdObject {
  /// Represents a list of emoji categories
  const EmojiCategories({
    required this.categories,
    this.extra,
    this.clientId,
  });

  /// [categories] List of categories
  final List<EmojiCategory> categories;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory EmojiCategories.fromJson(Map<String, dynamic> json) =>
      EmojiCategories(
        categories: List<EmojiCategory>.from((json['categories'] ?? [])
            .map((item) => EmojiCategory.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "categories": categories.map((i) => i.toJson()).toList(),
    };
  }

  EmojiCategories copyWith({
    List<EmojiCategory>? categories,
    dynamic extra,
    int? clientId,
  }) =>
      EmojiCategories(
        categories: categories ?? this.categories,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'emojiCategories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
