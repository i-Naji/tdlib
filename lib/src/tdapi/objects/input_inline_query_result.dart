part of '../tdapi.dart';

class InputInlineQueryResult extends TdObject {
  

  /// Represents a single result of an inline query; for bots only
  InputInlineQueryResult();

  /// a InputInlineQueryResult return type can be :
  /// * InputInlineQueryResultAnimation
  /// * InputInlineQueryResultArticle
  /// * InputInlineQueryResultAudio
  /// * InputInlineQueryResultContact
  /// * InputInlineQueryResultDocument
  /// * InputInlineQueryResultGame
  /// * InputInlineQueryResultLocation
  /// * InputInlineQueryResultPhoto
  /// * InputInlineQueryResultSticker
  /// * InputInlineQueryResultVenue
  /// * InputInlineQueryResultVideo
  /// * InputInlineQueryResultVoiceNote
  factory InputInlineQueryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputInlineQueryResultAnimation.CONSTRUCTOR:
        return InputInlineQueryResultAnimation.fromJson(json);
      case InputInlineQueryResultArticle.CONSTRUCTOR:
        return InputInlineQueryResultArticle.fromJson(json);
      case InputInlineQueryResultAudio.CONSTRUCTOR:
        return InputInlineQueryResultAudio.fromJson(json);
      case InputInlineQueryResultContact.CONSTRUCTOR:
        return InputInlineQueryResultContact.fromJson(json);
      case InputInlineQueryResultDocument.CONSTRUCTOR:
        return InputInlineQueryResultDocument.fromJson(json);
      case InputInlineQueryResultGame.CONSTRUCTOR:
        return InputInlineQueryResultGame.fromJson(json);
      case InputInlineQueryResultLocation.CONSTRUCTOR:
        return InputInlineQueryResultLocation.fromJson(json);
      case InputInlineQueryResultPhoto.CONSTRUCTOR:
        return InputInlineQueryResultPhoto.fromJson(json);
      case InputInlineQueryResultSticker.CONSTRUCTOR:
        return InputInlineQueryResultSticker.fromJson(json);
      case InputInlineQueryResultVenue.CONSTRUCTOR:
        return InputInlineQueryResultVenue.fromJson(json);
      case InputInlineQueryResultVideo.CONSTRUCTOR:
        return InputInlineQueryResultVideo.fromJson(json);
      case InputInlineQueryResultVoiceNote.CONSTRUCTOR:
        return InputInlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResult';
}

class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  String id;
  String title;
  String thumbnailUrl;
  String thumbnailMimeType;
  String videoUrl;
  String videoMimeType;
  int videoDuration;
  int videoWidth;
  int videoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to an animated GIF or an animated (i.e. without sound) H.264/MPEG-4 AVC video. 
  /// [id] Unique identifier of the query result. 
  /// [title] Title of the query result. 
  /// [thumbnailUrl] URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists. 
  /// [thumbnailMimeType] MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4". 
  /// [videoUrl] The URL of the video file (file size must not exceed 1MB). 
  /// [videoMimeType] MIME type of the video file. Must be one of "image/gif" and "video/mp4". 
  /// [videoDuration] Duration of the video, in seconds. 
  /// [videoWidth] Width of the video . 
  /// [videoHeight] Height of the video. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultAnimation({this.id,
    this.title,
    this.thumbnailUrl,
    this.thumbnailMimeType,
    this.videoUrl,
    this.videoMimeType,
    this.videoDuration,
    this.videoWidth,
    this.videoHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailMimeType = json['thumbnail_mime_type'];
    this.videoUrl = json['video_url'];
    this.videoMimeType = json['video_mime_type'];
    this.videoDuration = json['video_duration'];
    this.videoWidth = json['video_width'];
    this.videoHeight = json['video_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_mime_type": this.thumbnailMimeType,
      "video_url": this.videoUrl,
      "video_mime_type": this.videoMimeType,
      "video_duration": this.videoDuration,
      "video_width": this.videoWidth,
      "video_height": this.videoHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultAnimation';
}

class InputInlineQueryResultArticle extends InputInlineQueryResult {
  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to an article or web page. 
  /// [id] Unique identifier of the query result . 
  /// [url] URL of the result, if it exists . 
  /// [hideUrl] True, if the URL must be not shown . 
  /// [title] Title of the result. 
  /// [description] A short description of the result. 
  /// [thumbnailUrl] URL of the result thumbnail, if it exists . 
  /// [thumbnailWidth] Thumbnail width, if known . 
  /// [thumbnailHeight] Thumbnail height, if known. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultArticle({this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.url = json['url'];
    this.hideUrl = json['hide_url'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
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
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultArticle';
}

class InputInlineQueryResultAudio extends InputInlineQueryResult {
  String id;
  String title;
  String performer;
  String audioUrl;
  int audioDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to an MP3 audio file. 
  /// [id] Unique identifier of the query result . 
  /// [title] Title of the audio file . 
  /// [performer] Performer of the audio file. 
  /// [audioUrl] The URL of the audio file. 
  /// [audioDuration] Audio file duration, in seconds. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAudio, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultAudio({this.id,
    this.title,
    this.performer,
    this.audioUrl,
    this.audioDuration,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.performer = json['performer'];
    this.audioUrl = json['audio_url'];
    this.audioDuration = json['audio_duration'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "performer": this.performer,
      "audio_url": this.audioUrl,
      "audio_duration": this.audioDuration,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultAudio';
}

class InputInlineQueryResultContact extends InputInlineQueryResult {
  String id;
  Contact contact;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a user contact. 
  /// [id] Unique identifier of the query result . 
  /// [contact] User contact . 
  /// [thumbnailUrl] URL of the result thumbnail, if it exists . 
  /// [thumbnailWidth] Thumbnail width, if known . 
  /// [thumbnailHeight] Thumbnail height, if known. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultContact({this.id,
    this.contact,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultContact.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "contact": this.contact.toJson(),
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultContact';
}

class InputInlineQueryResultDocument extends InputInlineQueryResult {
  String id;
  String title;
  String description;
  String documentUrl;
  String mimeType;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to a file. 
  /// [id] Unique identifier of the query result . 
  /// [title] Title of the resulting file . 
  /// [description] Short description of the result, if known . 
  /// [documentUrl] URL of the file . 
  /// [mimeType] MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed. 
  /// [thumbnailUrl] The URL of the file thumbnail, if it exists. 
  /// [thumbnailWidth] Width of the thumbnail . 
  /// [thumbnailHeight] Height of the thumbnail. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageDocument, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultDocument({this.id,
    this.title,
    this.description,
    this.documentUrl,
    this.mimeType,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.description = json['description'];
    this.documentUrl = json['document_url'];
    this.mimeType = json['mime_type'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "description": this.description,
      "document_url": this.documentUrl,
      "mime_type": this.mimeType,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultDocument';
}

class InputInlineQueryResultGame extends InputInlineQueryResult {
  String id;
  String gameShortName;
  ReplyMarkup replyMarkup;

  /// Represents a game. 
  /// [id] Unique identifier of the query result . 
  /// [gameShortName] Short name of the game . 
  /// [replyMarkup] Message reply markup. Must be of type replyMarkupInlineKeyboard or null
  InputInlineQueryResultGame({this.id,
    this.gameShortName,
    this.replyMarkup});

  /// Parse from a json
  InputInlineQueryResultGame.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.gameShortName = json['game_short_name'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "game_short_name": this.gameShortName,
      "reply_markup": this.replyMarkup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultGame';
}

class InputInlineQueryResultLocation extends InputInlineQueryResult {
  String id;
  Location location;
  int livePeriod;
  String title;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a point on the map. 
  /// [id] Unique identifier of the query result . 
  /// [location] Location result . 
  /// [livePeriod] Amount of time relative to the message sent time until the location can be updated, in seconds . 
  /// [title] Title of the result . 
  /// [thumbnailUrl] URL of the result thumbnail, if it exists . 
  /// [thumbnailWidth] Thumbnail width, if known . 
  /// [thumbnailHeight] Thumbnail height, if known. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultLocation({this.id,
    this.location,
    this.livePeriod,
    this.title,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
    this.title = json['title'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "location": this.location.toJson(),
      "live_period": this.livePeriod,
      "title": this.title,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultLocation';
}

class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  String id;
  String title;
  String description;
  String thumbnailUrl;
  String photoUrl;
  int photoWidth;
  int photoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents link to a JPEG image. 
  /// [id] Unique identifier of the query result . 
  /// [title] Title of the result, if known . 
  /// [description] A short description of the result, if known . 
  /// [thumbnailUrl] URL of the photo thumbnail, if it exists. 
  /// [photoUrl] The URL of the JPEG photo (photo size must not exceed 5MB). 
  /// [photoWidth] Width of the photo . 
  /// [photoHeight] Height of the photo. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessagePhoto, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultPhoto({this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.photoUrl,
    this.photoWidth,
    this.photoHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.photoUrl = json['photo_url'];
    this.photoWidth = json['photo_width'];
    this.photoHeight = json['photo_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "description": this.description,
      "thumbnail_url": this.thumbnailUrl,
      "photo_url": this.photoUrl,
      "photo_width": this.photoWidth,
      "photo_height": this.photoHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultPhoto';
}

class InputInlineQueryResultSticker extends InputInlineQueryResult {
  String id;
  String thumbnailUrl;
  String stickerUrl;
  int stickerWidth;
  int stickerHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to a WEBP or TGS sticker. 
  /// [id] Unique identifier of the query result . 
  /// [thumbnailUrl] URL of the sticker thumbnail, if it exists. 
  /// [stickerUrl] The URL of the WEBP or TGS sticker (sticker file size must not exceed 5MB). 
  /// [stickerWidth] Width of the sticker . 
  /// [stickerHeight] Height of the sticker. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, inputMessageSticker, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultSticker({this.id,
    this.thumbnailUrl,
    this.stickerUrl,
    this.stickerWidth,
    this.stickerHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.stickerUrl = json['sticker_url'];
    this.stickerWidth = json['sticker_width'];
    this.stickerHeight = json['sticker_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "thumbnail_url": this.thumbnailUrl,
      "sticker_url": this.stickerUrl,
      "sticker_width": this.stickerWidth,
      "sticker_height": this.stickerHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultSticker';
}

class InputInlineQueryResultVenue extends InputInlineQueryResult {
  String id;
  Venue venue;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents information about a venue. 
  /// [id] Unique identifier of the query result . 
  /// [venue] Venue result . 
  /// [thumbnailUrl] URL of the result thumbnail, if it exists . 
  /// [thumbnailWidth] Thumbnail width, if known . 
  /// [thumbnailHeight] Thumbnail height, if known. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultVenue({this.id,
    this.venue,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "venue": this.venue.toJson(),
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVenue';
}

class InputInlineQueryResultVideo extends InputInlineQueryResult {
  String id;
  String title;
  String description;
  String thumbnailUrl;
  String videoUrl;
  String mimeType;
  int videoWidth;
  int videoHeight;
  int videoDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to a page containing an embedded video player or a video file. 
  /// [id] Unique identifier of the query result . 
  /// [title] Title of the result . 
  /// [description] A short description of the result, if known. 
  /// [thumbnailUrl] The URL of the video thumbnail (JPEG), if it exists. 
  /// [videoUrl] URL of the embedded video player or video file . 
  /// [mimeType] MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported. 
  /// [videoWidth] Width of the video. 
  /// [videoHeight] Height of the video . 
  /// [videoDuration] Video duration, in seconds. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVideo, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultVideo({this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.videoUrl,
    this.mimeType,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.videoUrl = json['video_url'];
    this.mimeType = json['mime_type'];
    this.videoWidth = json['video_width'];
    this.videoHeight = json['video_height'];
    this.videoDuration = json['video_duration'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "description": this.description,
      "thumbnail_url": this.thumbnailUrl,
      "video_url": this.videoUrl,
      "mime_type": this.mimeType,
      "video_width": this.videoWidth,
      "video_height": this.videoHeight,
      "video_duration": this.videoDuration,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVideo';
}

class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  String id;
  String title;
  String voiceNoteUrl;
  int voiceNoteDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio. 
  /// [id] Unique identifier of the query result . 
  /// [title] Title of the voice note. 
  /// [voiceNoteUrl] The URL of the voice note file. 
  /// [voiceNoteDuration] Duration of the voice note, in seconds. 
  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null. 
  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputInlineQueryResultVoiceNote({this.id,
    this.title,
    this.voiceNoteUrl,
    this.voiceNoteDuration,
    this.replyMarkup,
    this.inputMessageContent});

  /// Parse from a json
  InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.title = json['title'];
    this.voiceNoteUrl = json['voice_note_url'];
    this.voiceNoteDuration = json['voice_note_duration'];
    this.replyMarkup = ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "voice_note_url": this.voiceNoteUrl,
      "voice_note_duration": this.voiceNoteDuration,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVoiceNote';
}