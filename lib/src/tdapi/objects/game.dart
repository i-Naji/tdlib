part of '../tdapi.dart';

class Game extends TdObject {

  /// Describes a game
  const Game({
    required this.id,
    required this.shortName,
    required this.title,
    required this.text,
    required this.description,
    required this.photo,
    this.animation,
  });
  
  /// [id] Game game 
  final int id;

  /// [shortName] Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name} 
  final String shortName;

  /// [title] Game title 
  final String title;

  /// [text] Game text, usually containing scoreboards for a game
  final FormattedText text;

  /// [description] Game description
  final String description;

  /// [photo] Game photo 
  final Photo photo;

  /// [animation] Game animation; may be null
  final Animation? animation;
  
  /// Parse from a json
  factory Game.fromJson(Map<String, dynamic> json) => Game(
    id: int.parse(json['id']),
    shortName: json['short_name'],
    title: json['title'],
    text: FormattedText.fromJson(json['text']),
    description: json['description'],
    photo: Photo.fromJson(json['photo']),
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "short_name": shortName,
      "title": title,
      "text": text.toJson(),
      "description": description,
      "photo": photo.toJson(),
      "animation": animation?.toJson(),
    };
  }
  
  Game copyWith({
    int? id,
    String? shortName,
    String? title,
    FormattedText? text,
    String? description,
    Photo? photo,
    Animation? animation,
  }) => Game(
    id: id ?? this.id,
    shortName: shortName ?? this.shortName,
    title: title ?? this.title,
    text: text ?? this.text,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    animation: animation ?? this.animation,
  );

  static const CONSTRUCTOR = 'game';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
