part of '../tdapi.dart';

class GetInlineGameHighScores extends TLFunction {
  String inlineMessageId;
  int userId;
  dynamic extra;

  /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  ///[inlineMessageId] Inline message identifier .
  /// [userId] User identifier
  GetInlineGameHighScores({this.inlineMessageId, this.userId});

  /// Parse from a json
  GetInlineGameHighScores.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "user_id": this.userId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getInlineGameHighScores";

  @override
  String getConstructor() => CONSTRUCTOR;
}
