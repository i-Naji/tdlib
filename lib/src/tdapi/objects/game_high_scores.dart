part of '../tdapi.dart';

class GameHighScores implements TdObject {
  List<GameHighScore> scores;
  dynamic extra;

  /// Contains a list of game high scores.
  ///[scores] A list of game high scores
  GameHighScores({this.scores});

  /// Parse from a json
  GameHighScores.fromJson(Map<String, dynamic> json) {
    this.scores = List<GameHighScore>.from((json['scores'] ?? [])
        .map((listValue) => GameHighScore.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scores": this.scores.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "gameHighScores";

  @override
  String getConstructor() => CONSTRUCTOR;
}
