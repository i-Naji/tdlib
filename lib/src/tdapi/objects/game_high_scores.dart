part of '../tdapi.dart';

class GameHighScores extends TdObject {
  List<List<GameHighScore>> scores;
  dynamic extra;

  /// Contains a list of game high scores. 
  /// [scores] A list of game high scores
  GameHighScores({this.scores});

  /// Parse from a json
  GameHighScores.fromJson(Map<String, dynamic> json)  {
    this.scores = List<List<GameHighScore>>.from((json['scores'] ?? []).map((item) => List<GameHighScore>.from((item ?? []).map((innerItem) => GameHighScore.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scores": this.scores.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'gameHighScores';
}