part of '../tdapi.dart';

class InlineQueryResult extends TdObject {
  /// Represents a single result of an inline query
  InlineQueryResult();

  /// a InlineQueryResult return type can be :
  /// * InlineQueryResultArticle
  /// * InlineQueryResultContact
  /// * InlineQueryResultLocation
  /// * InlineQueryResultVenue
  /// * InlineQueryResultGame
  /// * InlineQueryResultAnimation
  /// * InlineQueryResultAudio
  /// * InlineQueryResultDocument
  /// * InlineQueryResultPhoto
  /// * InlineQueryResultSticker
  /// * InlineQueryResultVideo
  /// * InlineQueryResultVoiceNote
  factory InlineQueryResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InlineQueryResultArticle.CONSTRUCTOR:
        return InlineQueryResultArticle.fromJson(json);
      case InlineQueryResultContact.CONSTRUCTOR:
        return InlineQueryResultContact.fromJson(json);
      case InlineQueryResultLocation.CONSTRUCTOR:
        return InlineQueryResultLocation.fromJson(json);
      case InlineQueryResultVenue.CONSTRUCTOR:
        return InlineQueryResultVenue.fromJson(json);
      case InlineQueryResultGame.CONSTRUCTOR:
        return InlineQueryResultGame.fromJson(json);
      case InlineQueryResultAnimation.CONSTRUCTOR:
        return InlineQueryResultAnimation.fromJson(json);
      case InlineQueryResultAudio.CONSTRUCTOR:
        return InlineQueryResultAudio.fromJson(json);
      case InlineQueryResultDocument.CONSTRUCTOR:
        return InlineQueryResultDocument.fromJson(json);
      case InlineQueryResultPhoto.CONSTRUCTOR:
        return InlineQueryResultPhoto.fromJson(json);
      case InlineQueryResultSticker.CONSTRUCTOR:
        return InlineQueryResultSticker.fromJson(json);
      case InlineQueryResultVideo.CONSTRUCTOR:
        return InlineQueryResultVideo.fromJson(json);
      case InlineQueryResultVoiceNote.CONSTRUCTOR:
        return InlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inlineQueryResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultArticle extends InlineQueryResult {
  /// Represents a link to an article or web page
  InlineQueryResultArticle(
      {this.id,
      this.url,
      this.hideUrl,
      this.title,
      this.description,
      this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [url] URL of the result, if it exists
  String url;

  /// [hideUrl] True, if the URL must be not shown
  bool hideUrl;

  /// [title] Title of the result
  String title;

  /// [description] A short description of the result
  String description;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail thumbnail;

  /// Parse from a json
  InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.url = json['url'];
    this.hideUrl = json['hide_url'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "url": this.url,
      "hide_url": this.hideUrl,
      "title": this.title,
      "description": this.description,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultArticle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultContact extends InlineQueryResult {
  /// Represents a user contact
  InlineQueryResultContact({this.id, this.contact, this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [contact] A user contact
  Contact contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail thumbnail;

  /// Parse from a json
  InlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "contact": this.contact == null ? null : this.contact.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultLocation extends InlineQueryResult {
  /// Represents a point on the map
  InlineQueryResultLocation(
      {this.id, this.location, this.title, this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [location] Location result
  Location location;

  /// [title] Title of the result
  String title;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail thumbnail;

  /// Parse from a json
  InlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "location": this.location == null ? null : this.location.toJson(),
      "title": this.title,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVenue extends InlineQueryResult {
  /// Represents information about a venue
  InlineQueryResultVenue({this.id, this.venue, this.thumbnail});

  /// [id] Unique identifier of the query result
  String id;

  /// [venue] Venue result
  Venue venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  Thumbnail thumbnail;

  /// Parse from a json
  InlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
    this.thumbnail =
        Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "venue": this.venue == null ? null : this.venue.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultGame extends InlineQueryResult {
  /// Represents information about a game
  InlineQueryResultGame({this.id, this.game});

  /// [id] Unique identifier of the query result
  String id;

  /// [game] Game result
  Game game;

  /// Parse from a json
  InlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.game = Game.fromJson(json['game'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "game": this.game == null ? null : this.game.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultAnimation extends InlineQueryResult {
  /// Represents an animation file
  InlineQueryResultAnimation({this.id, this.animation, this.title});

  /// [id] Unique identifier of the query result
  String id;

  /// [animation] Animation file
  Animation animation;

  /// [title] Animation title
  String title;

  /// Parse from a json
  InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.animation =
        Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultAudio extends InlineQueryResult {
  /// Represents an audio file
  InlineQueryResultAudio({this.id, this.audio});

  /// [id] Unique identifier of the query result
  String id;

  /// [audio] Audio file
  Audio audio;

  /// Parse from a json
  InlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "audio": this.audio == null ? null : this.audio.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultDocument extends InlineQueryResult {
  /// Represents a document
  InlineQueryResultDocument(
      {this.id, this.document, this.title, this.description});

  /// [id] Unique identifier of the query result
  String id;

  /// [document] Document
  Document document;

  /// [title] Document title
  String title;

  /// [description] Document description
  String description;

  /// Parse from a json
  InlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "document": this.document == null ? null : this.document.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultPhoto extends InlineQueryResult {
  /// Represents a photo
  InlineQueryResultPhoto({this.id, this.photo, this.title, this.description});

  /// [id] Unique identifier of the query result
  String id;

  /// [photo] Photo
  Photo photo;

  /// [title] Title of the result, if known
  String title;

  /// [description] A short description of the result, if known
  String description;

  /// Parse from a json
  InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultSticker extends InlineQueryResult {
  /// Represents a sticker
  InlineQueryResultSticker({this.id, this.sticker});

  /// [id] Unique identifier of the query result
  String id;

  /// [sticker] Sticker
  Sticker sticker;

  /// Parse from a json
  InlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVideo extends InlineQueryResult {
  /// Represents a video
  InlineQueryResultVideo({this.id, this.video, this.title, this.description});

  /// [id] Unique identifier of the query result
  String id;

  /// [video] Video
  Video video;

  /// [title] Title of the video
  String title;

  /// [description] Description of the video
  String description;

  /// Parse from a json
  InlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "video": this.video == null ? null : this.video.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVoiceNote extends InlineQueryResult {
  /// Represents a voice note
  InlineQueryResultVoiceNote({this.id, this.voiceNote, this.title});

  /// [id] Unique identifier of the query result
  String id;

  /// [voiceNote] Voice note
  VoiceNote voiceNote;

  /// [title] Title of the voice note
  String title;

  /// Parse from a json
  InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.voiceNote =
        VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
