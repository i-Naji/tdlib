part of '../tdapi.dart';

class GetEmojiCategories extends TdFunction {
  /// Returns available emojis categories
  const GetEmojiCategories({
    this.type,
  });

  /// [type] Type of emoji categories to return; pass null to get default emoji categories
  final EmojiCategoryType? type;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type?.toJson(),
      "@extra": extra,
    };
  }

  GetEmojiCategories copyWith({
    EmojiCategoryType? type,
  }) =>
      GetEmojiCategories(
        type: type ?? this.type,
      );

  static const CONSTRUCTOR = 'getEmojiCategories';

  @override
  String getConstructor() => CONSTRUCTOR;
}
