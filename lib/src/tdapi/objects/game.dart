part of '../tdapi.dart';

class Game extends TdObject {
  /// Describes a game
  Game(
      {this.id,
      this.shortName,
      this.title,
      this.text,
      this.description,
      this.photo,
      this.animation});

  /// [id] Game game
  int id;

  /// [shortName] Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}
  String shortName;

  /// [title] Game title
  String title;

  /// [text] Game text, usually containing scoreboards for a game
  FormattedText text;

  /// [description] Game description
  String description;

  /// [photo] Game photo
  Photo photo;

  /// [animation] Game animation; may be null
  Animation animation;

  /// Parse from a json
  Game.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
    this.shortName = json['short_name'];
    this.title = json['title'];
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.description = json['description'];
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.animation =
        Animation.fromJson(json['animation'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "short_name": this.shortName,
      "title": this.title,
      "text": this.text == null ? null : this.text.toJson(),
      "description": this.description,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "animation": this.animation == null ? null : this.animation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'game';

  @override
  String getConstructor() => CONSTRUCTOR;
}
