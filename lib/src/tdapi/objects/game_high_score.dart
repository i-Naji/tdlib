part of '../tdapi.dart';

class GameHighScore extends TdObject {
  int position;
  int userId;
  int score;

  /// Contains one row of the game high score table. 
  /// [position] Position in the high score table . 
  /// [userId] User identifier . 
  /// [score] User score
  GameHighScore({this.position,
    this.userId,
    this.score});

  /// Parse from a json
  GameHighScore.fromJson(Map<String, dynamic> json)  {
    this.position = json['position'];
    this.userId = json['user_id'];
    this.score = json['score'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "position": this.position,
      "user_id": this.userId,
      "score": this.score,
    };
  }

  static const CONSTRUCTOR = 'gameHighScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}