part of '../tdapi.dart';

class GetInlineGameHighScores extends TdFunction {
  /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
  GetInlineGameHighScores({this.inlineMessageId, this.userId});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetInlineGameHighScores.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInlineGameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
}
