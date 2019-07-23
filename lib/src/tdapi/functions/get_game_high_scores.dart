part of '../tdapi.dart';

class GetGameHighScores extends TdFunction {
  int chatId;
  int messageId;
  int userId;
  dynamic extra;

  /// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only.
  ///[chatId] The chat that contains the message with the game .
  /// [messageId] Identifier of the message .
  /// [userId] User identifier
  GetGameHighScores({this.chatId, this.messageId, this.userId});

  /// Parse from a json
  GetGameHighScores.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "user_id": this.userId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getGameHighScores";

  @override
  String getConstructor() => CONSTRUCTOR;
}
