part of '../tdapi.dart';

class GameHighScores extends TdObject {

  /// Contains a list of game high scores
  const GameHighScores({
    required this.scores,
    this.extra,
    this.clientId,
  });
  
  /// [scores] A list of game high scores
  final List<GameHighScore> scores;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GameHighScores.fromJson(Map<String, dynamic> json) => GameHighScores(
    scores: List<GameHighScore>.from((json['scores'] ?? []).map((item) => GameHighScore.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "scores": scores.map((i) => i.toJson()).toList(),
    };
  }
  
  GameHighScores copyWith({
    List<GameHighScore>? scores,
    dynamic extra,
    int? clientId,
  }) => GameHighScores(
    scores: scores ?? this.scores,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'gameHighScores';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
