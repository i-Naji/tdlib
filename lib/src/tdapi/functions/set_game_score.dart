part of '../tdapi.dart';

class SetGameScore extends TdFunction {

  /// Updates the game score of the specified user in the game; for bots only
  const SetGameScore({
    required this.chatId,
    required this.messageId,
    required this.editMessage,
    required this.userId,
    required this.score,
    required this.force,
  });
  
  /// [chatId] The chat to which the message with the game belongs 
  final int chatId;

  /// [messageId] Identifier of the message 
  final int messageId;

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
      "chat_id": chatId,
      "message_id": messageId,
      "edit_message": editMessage,
      "user_id": userId,
      "score": score,
      "force": force,
      "@extra": extra,
    };
  }
  
  SetGameScore copyWith({
    int? chatId,
    int? messageId,
    bool? editMessage,
    int? userId,
    int? score,
    bool? force,
  }) => SetGameScore(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    editMessage: editMessage ?? this.editMessage,
    userId: userId ?? this.userId,
    score: score ?? this.score,
    force: force ?? this.force,
  );

  static const CONSTRUCTOR = 'setGameScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
