part of '../tdapi.dart';

class EmojiCategory extends TdObject {
  /// Contains a list of similar emoji to search for in getStickers and searchStickers
  const EmojiCategory({
    required this.name,
    required this.icon,
    required this.emojis,
  });

  /// [name] Name of the category
  final String name;

  /// [icon] Custom emoji sticker, which represents icon of the category
  final Sticker icon;

  /// [emojis] List of emojis in the category
  final List<String> emojis;

  /// Parse from a json
  factory EmojiCategory.fromJson(Map<String, dynamic> json) => EmojiCategory(
        name: json['name'],
        icon: Sticker.fromJson(json['icon']),
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "icon": icon.toJson(),
      "emojis": emojis.map((i) => i).toList(),
    };
  }

  EmojiCategory copyWith({
    String? name,
    Sticker? icon,
    List<String>? emojis,
  }) =>
      EmojiCategory(
        name: name ?? this.name,
        icon: icon ?? this.icon,
        emojis: emojis ?? this.emojis,
      );

  static const CONSTRUCTOR = 'emojiCategory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
