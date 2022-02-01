part of '../tdapi.dart';

class SetInlineGameScore extends TdFunction {

  /// Updates the game score of the specified user in a game; for bots only
  const SetInlineGameScore({
    required this.inlineMessageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });
  
  /// [inlineMessageId] Inline message identifier 
  final String inlineMessageId;

  /// [editMessage] True, if the message needs to be edited 
  final bool editMessage;

  /// [userId] User identifier 
  final int userId;

  /// [score] The new score
  final int score;

  /// [force] Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": inlineMessageId,
      "edit_message": editMessage,
      "user_id": userId,
      "score": score,
      "force": force,
      "@extra": extra,
    };
  }
  
  SetInlineGameScore copyWith({
    String? inlineMessageId,
    bool? editMessage,
    int? userId,
    int? score,
    bool? force,
  }) => SetInlineGameScore(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    editMessage: editMessage ?? this.editMessage,
    userId: userId ?? this.userId,
    score: score ?? this.score,
    force: force ?? this.force,
  );

  static const CONSTRUCTOR = 'setInlineGameScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
