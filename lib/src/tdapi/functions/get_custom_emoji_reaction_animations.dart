part of '../tdapi.dart';

class GetCustomEmojiReactionAnimations extends TdFunction {
  /// Returns TGS stickers with generic animations for custom emoji reactions
  const GetCustomEmojiReactionAnimations();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetCustomEmojiReactionAnimations copyWith() =>
      const GetCustomEmojiReactionAnimations();

  static const CONSTRUCTOR = 'getCustomEmojiReactionAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
