part of '../tdapi.dart';

class GetEmojiReaction extends TdFunction {
  /// Returns information about a emoji reaction. Returns a 404 error if the reaction is not found
  const GetEmojiReaction({
    required this.emoji,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "@extra": extra,
    };
  }

  GetEmojiReaction copyWith({
    String? emoji,
  }) =>
      GetEmojiReaction(
        emoji: emoji ?? this.emoji,
      );

  static const CONSTRUCTOR = 'getEmojiReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
