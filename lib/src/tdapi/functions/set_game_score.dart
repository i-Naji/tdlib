part of '../tdapi.dart';

class SetGameScore extends TdFunction {
  int chatId;
  int messageId;
  bool editMessage;
  int userId;
  int score;
  bool force;
  dynamic extra;

  /// Updates the game score of the specified user in the game; for bots only. 
  /// [chatId] The chat to which the message with the game belongs . 
  /// [messageId] Identifier of the message . 
  /// [editMessage] True, if the message should be edited . 
  /// [userId] User identifier . 
  /// [score] The new score. 
  /// [force] Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  SetGameScore({this.chatId,
    this.messageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force});

  /// Parse from a json
  SetGameScore.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "edit_message": this.editMessage,
      "user_id": this.userId,
      "score": this.score,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setGameScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}