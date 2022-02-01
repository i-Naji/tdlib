part of '../tdapi.dart';

class GetAnimatedEmoji extends TdFunction {

  /// Returns an animated emoji corresponding to a given emoji. Returns a 404 error if the emoji has no animated emoji
  const GetAnimatedEmoji({
    required this.emoji,
  });
  
  /// [emoji] The emoji
  final String emoji;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "@extra": extra,
    };
  }
  
  GetAnimatedEmoji copyWith({
    String? emoji,
  }) => GetAnimatedEmoji(
    emoji: emoji ?? this.emoji,
  );

  static const CONSTRUCTOR = 'getAnimatedEmoji';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
