part of '../tdapi.dart';

class GetInlineGameHighScores extends TdFunction {

  /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
  const GetInlineGameHighScores({
    required this.inlineMessageId,
    required this.userId,
  });
  
  /// [inlineMessageId] Inline message identifier 
  final String inlineMessageId;

  /// [userId] User identifier
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": inlineMessageId,
      "user_id": userId,
      "@extra": extra,
    };
  }
  
  GetInlineGameHighScores copyWith({
    String? inlineMessageId,
    int? userId,
  }) => GetInlineGameHighScores(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'getInlineGameHighScores';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
