part of '../tdapi.dart';

class InlineQueryResult extends TdObject {

  /// Represents a single result of an inline query
  const InlineQueryResult();
  
  /// a InlineQueryResult return type can be :
  /// * [InlineQueryResultArticle]
  /// * [InlineQueryResultContact]
  /// * [InlineQueryResultLocation]
  /// * [InlineQueryResultVenue]
  /// * [InlineQueryResultGame]
  /// * [InlineQueryResultAnimation]
  /// * [InlineQueryResultAudio]
  /// * [InlineQueryResultDocument]
  /// * [InlineQueryResultPhoto]
  /// * [InlineQueryResultSticker]
  /// * [InlineQueryResultVideo]
  /// * [InlineQueryResultVoiceNote]
  factory InlineQueryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
        return const InlineQueryResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InlineQueryResult copyWith() => const InlineQueryResult();

  static const CONSTRUCTOR = 'inlineQueryResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultArticle extends InlineQueryResult {

  /// Represents a link to an article or web page
  const InlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.hideUrl,
    required this.title,
    required this.description,
    this.thumbnail,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [url] URL of the result, if it exists 
  final String url;

  /// [hideUrl] True, if the URL must be not shown 
  final bool hideUrl;

  /// [title] Title of the result
  final String title;

  /// [description] A short description of the result
  final String description;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) => InlineQueryResultArticle(
    id: json['id'],
    url: json['url'],
    hideUrl: json['hide_url'],
    title: json['title'],
    description: json['description'],
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "url": url,
      "hide_url": hideUrl,
      "title": title,
      "description": description,
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultArticle copyWith({
    String? id,
    String? url,
    bool? hideUrl,
    String? title,
    String? description,
    Thumbnail? thumbnail,
  }) => InlineQueryResultArticle(
    id: id ?? this.id,
    url: url ?? this.url,
    hideUrl: hideUrl ?? this.hideUrl,
    title: title ?? this.title,
    description: description ?? this.description,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const CONSTRUCTOR = 'inlineQueryResultArticle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultContact extends InlineQueryResult {

  /// Represents a user contact
  const InlineQueryResultContact({
    required this.id,
    required this.contact,
    this.thumbnail,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [contact] A user contact 
  final Contact contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) => InlineQueryResultContact(
    id: json['id'],
    contact: Contact.fromJson(json['contact']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "contact": contact.toJson(),
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultContact copyWith({
    String? id,
    Contact? contact,
    Thumbnail? thumbnail,
  }) => InlineQueryResultContact(
    id: id ?? this.id,
    contact: contact ?? this.contact,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const CONSTRUCTOR = 'inlineQueryResultContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultLocation extends InlineQueryResult {

  /// Represents a point on the map
  const InlineQueryResultLocation({
    required this.id,
    required this.location,
    required this.title,
    this.thumbnail,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [location] Location result 
  final Location location;

  /// [title] Title of the result 
  final String title;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) => InlineQueryResultLocation(
    id: json['id'],
    location: Location.fromJson(json['location']),
    title: json['title'],
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "location": location.toJson(),
      "title": title,
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultLocation copyWith({
    String? id,
    Location? location,
    String? title,
    Thumbnail? thumbnail,
  }) => InlineQueryResultLocation(
    id: id ?? this.id,
    location: location ?? this.location,
    title: title ?? this.title,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const CONSTRUCTOR = 'inlineQueryResultLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultVenue extends InlineQueryResult {

  /// Represents information about a venue
  const InlineQueryResultVenue({
    required this.id,
    required this.venue,
    this.thumbnail,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [venue] Venue result 
  final Venue venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;
  
  /// Parse from a json
  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) => InlineQueryResultVenue(
    id: json['id'],
    venue: Venue.fromJson(json['venue']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "venue": venue.toJson(),
      "thumbnail": thumbnail?.toJson(),
    };
  }
  
  @override
  InlineQueryResultVenue copyWith({
    String? id,
    Venue? venue,
    Thumbnail? thumbnail,
  }) => InlineQueryResultVenue(
    id: id ?? this.id,
    venue: venue ?? this.venue,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  static const CONSTRUCTOR = 'inlineQueryResultVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultGame extends InlineQueryResult {

  /// Represents information about a game
  const InlineQueryResultGame({
    required this.id,
    required this.game,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [game] Game result
  final Game game;
  
  /// Parse from a json
  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) => InlineQueryResultGame(
    id: json['id'],
    game: Game.fromJson(json['game']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "game": game.toJson(),
    };
  }
  
  @override
  InlineQueryResultGame copyWith({
    String? id,
    Game? game,
  }) => InlineQueryResultGame(
    id: id ?? this.id,
    game: game ?? this.game,
  );

  static const CONSTRUCTOR = 'inlineQueryResultGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultAnimation extends InlineQueryResult {

  /// Represents an animation file
  const InlineQueryResultAnimation({
    required this.id,
    required this.animation,
    required this.title,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [animation] Animation file 
  final Animation animation;

  /// [title] Animation title
  final String title;
  
  /// Parse from a json
  factory InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) => InlineQueryResultAnimation(
    id: json['id'],
    animation: Animation.fromJson(json['animation']),
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "animation": animation.toJson(),
      "title": title,
    };
  }
  
  @override
  InlineQueryResultAnimation copyWith({
    String? id,
    Animation? animation,
    String? title,
  }) => InlineQueryResultAnimation(
    id: id ?? this.id,
    animation: animation ?? this.animation,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'inlineQueryResultAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultAudio extends InlineQueryResult {

  /// Represents an audio file
  const InlineQueryResultAudio({
    required this.id,
    required this.audio,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [audio] Audio file
  final Audio audio;
  
  /// Parse from a json
  factory InlineQueryResultAudio.fromJson(Map<String, dynamic> json) => InlineQueryResultAudio(
    id: json['id'],
    audio: Audio.fromJson(json['audio']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "audio": audio.toJson(),
    };
  }
  
  @override
  InlineQueryResultAudio copyWith({
    String? id,
    Audio? audio,
  }) => InlineQueryResultAudio(
    id: id ?? this.id,
    audio: audio ?? this.audio,
  );

  static const CONSTRUCTOR = 'inlineQueryResultAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultDocument extends InlineQueryResult {

  /// Represents a document
  const InlineQueryResultDocument({
    required this.id,
    required this.document,
    required this.title,
    required this.description,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [document] Document 
  final Document document;

  /// [title] Document title 
  final String title;

  /// [description] Document description
  final String description;
  
  /// Parse from a json
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) => InlineQueryResultDocument(
    id: json['id'],
    document: Document.fromJson(json['document']),
    title: json['title'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "document": document.toJson(),
      "title": title,
      "description": description,
    };
  }
  
  @override
  InlineQueryResultDocument copyWith({
    String? id,
    Document? document,
    String? title,
    String? description,
  }) => InlineQueryResultDocument(
    id: id ?? this.id,
    document: document ?? this.document,
    title: title ?? this.title,
    description: description ?? this.description,
  );

  static const CONSTRUCTOR = 'inlineQueryResultDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultPhoto extends InlineQueryResult {

  /// Represents a photo
  const InlineQueryResultPhoto({
    required this.id,
    required this.photo,
    required this.title,
    required this.description,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [photo] Photo 
  final Photo photo;

  /// [title] Title of the result, if known 
  final String title;

  /// [description] A short description of the result, if known
  final String description;
  
  /// Parse from a json
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) => InlineQueryResultPhoto(
    id: json['id'],
    photo: Photo.fromJson(json['photo']),
    title: json['title'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "photo": photo.toJson(),
      "title": title,
      "description": description,
    };
  }
  
  @override
  InlineQueryResultPhoto copyWith({
    String? id,
    Photo? photo,
    String? title,
    String? description,
  }) => InlineQueryResultPhoto(
    id: id ?? this.id,
    photo: photo ?? this.photo,
    title: title ?? this.title,
    description: description ?? this.description,
  );

  static const CONSTRUCTOR = 'inlineQueryResultPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultSticker extends InlineQueryResult {

  /// Represents a sticker
  const InlineQueryResultSticker({
    required this.id,
    required this.sticker,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [sticker] Sticker
  final Sticker sticker;
  
  /// Parse from a json
  factory InlineQueryResultSticker.fromJson(Map<String, dynamic> json) => InlineQueryResultSticker(
    id: json['id'],
    sticker: Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sticker": sticker.toJson(),
    };
  }
  
  @override
  InlineQueryResultSticker copyWith({
    String? id,
    Sticker? sticker,
  }) => InlineQueryResultSticker(
    id: id ?? this.id,
    sticker: sticker ?? this.sticker,
  );

  static const CONSTRUCTOR = 'inlineQueryResultSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultVideo extends InlineQueryResult {

  /// Represents a video
  const InlineQueryResultVideo({
    required this.id,
    required this.video,
    required this.title,
    required this.description,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [video] Video 
  final Video video;

  /// [title] Title of the video 
  final String title;

  /// [description] Description of the video
  final String description;
  
  /// Parse from a json
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) => InlineQueryResultVideo(
    id: json['id'],
    video: Video.fromJson(json['video']),
    title: json['title'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "video": video.toJson(),
      "title": title,
      "description": description,
    };
  }
  
  @override
  InlineQueryResultVideo copyWith({
    String? id,
    Video? video,
    String? title,
    String? description,
  }) => InlineQueryResultVideo(
    id: id ?? this.id,
    video: video ?? this.video,
    title: title ?? this.title,
    description: description ?? this.description,
  );

  static const CONSTRUCTOR = 'inlineQueryResultVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InlineQueryResultVoiceNote extends InlineQueryResult {

  /// Represents a voice note
  const InlineQueryResultVoiceNote({
    required this.id,
    required this.voiceNote,
    required this.title,
  });
  
  /// [id] Unique identifier of the query result 
  final String id;

  /// [voiceNote] Voice note 
  final VoiceNote voiceNote;

  /// [title] Title of the voice note
  final String title;
  
  /// Parse from a json
  factory InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) => InlineQueryResultVoiceNote(
    id: json['id'],
    voiceNote: VoiceNote.fromJson(json['voice_note']),
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "voice_note": voiceNote.toJson(),
      "title": title,
    };
  }
  
  @override
  InlineQueryResultVoiceNote copyWith({
    String? id,
    VoiceNote? voiceNote,
    String? title,
  }) => InlineQueryResultVoiceNote(
    id: id ?? this.id,
    voiceNote: voiceNote ?? this.voiceNote,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'inlineQueryResultVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
