part of '../tdapi.dart';

class Game extends TdObject {
  String id;
  String shortName;
  String title;
  FormattedText text;
  String description;
  Photo photo;
  Animation animation;

  /// Describes a game. 
  /// [id] Game game . 
  /// [shortName] Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name} . 
  /// [title] Game title . 
  /// [text] Game text, usually containing scoreboards for a game. 
  /// [description] Game description. 
  /// [photo] Game photo . 
  /// [animation] Game animation; may be null
  Game({this.id,
    this.shortName,
    this.title,
    this.text,
    this.description,
    this.photo,
    this.animation});

  /// Parse from a json
  Game.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.shortName = json['short_name'];
    this.title = json['title'];
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.description = json['description'];
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.animation = Animation.fromJson(json['animation'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "short_name": this.shortName,
      "title": this.title,
      "text": this.text.toJson(),
      "description": this.description,
      "photo": this.photo.toJson(),
      "animation": this.animation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'game';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}