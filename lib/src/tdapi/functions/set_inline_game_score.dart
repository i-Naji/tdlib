part of '../tdapi.dart';

class SetInlineGameScore extends TdFunction {
  String inlineMessageId;
  bool editMessage;
  int userId;
  int score;
  bool force;
  dynamic extra;

  /// Updates the game score of the specified user in a game; for bots only. 
  /// [inlineMessageId] Inline message identifier . 
  /// [editMessage] True, if the message should be edited . 
  /// [userId] User identifier . 
  /// [score] The new score. 
  /// [force] Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  SetInlineGameScore({this.inlineMessageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force});

  /// Parse from a json
  SetInlineGameScore.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "edit_message": this.editMessage,
      "user_id": this.userId,
      "score": this.score,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setInlineGameScore';
}