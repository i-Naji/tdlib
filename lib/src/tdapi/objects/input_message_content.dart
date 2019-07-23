part of '../tdapi.dart';

class InputMessageContent implements TdObject {
  /// The content of a message to send
  InputMessageContent();

  /// a InputMessageContent return type can be :
  /// * InputMessageText
  /// * InputMessageAnimation
  /// * InputMessageAudio
  /// * InputMessageDocument
  /// * InputMessagePhoto
  /// * InputMessageSticker
  /// * InputMessageVideo
  /// * InputMessageVideoNote
  /// * InputMessageVoiceNote
  /// * InputMessageLocation
  /// * InputMessageVenue
  /// * InputMessageContact
  /// * InputMessageGame
  /// * InputMessageInvoice
  /// * InputMessagePoll
  /// * InputMessageForwarded
  factory InputMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case InputMessageText.CONSTRUCTOR:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.CONSTRUCTOR:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.CONSTRUCTOR:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.CONSTRUCTOR:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.CONSTRUCTOR:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.CONSTRUCTOR:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.CONSTRUCTOR:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.CONSTRUCTOR:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.CONSTRUCTOR:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.CONSTRUCTOR:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.CONSTRUCTOR:
        return InputMessageContact.fromJson(json);
      case InputMessageGame.CONSTRUCTOR:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.CONSTRUCTOR:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.CONSTRUCTOR:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.CONSTRUCTOR:
        return InputMessageForwarded.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "inputMessageContent";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageText implements InputMessageContent {
  FormattedText text;
  bool disableWebPagePreview;
  bool clearDraft;

  /// A text message.
  ///[text] Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Code, Pre, PreCode and TextUrl entities are allowed to be specified manually.
  /// [disableWebPagePreview] True, if rich web page previews for URLs in the message text should be disabled .
  /// [clearDraft] True, if a chat message draft should be deleted
  InputMessageText({this.text, this.disableWebPagePreview, this.clearDraft});

  /// Parse from a json
  InputMessageText.fromJson(Map<String, dynamic> json) {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.disableWebPagePreview = json['disable_web_page_preview'];
    this.clearDraft = json['clear_draft'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "disable_web_page_preview": this.disableWebPagePreview,
      "clear_draft": this.clearDraft
    };
  }

  static const String CONSTRUCTOR = "inputMessageText";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAnimation implements InputMessageContent {
  var animation;
  InputThumbnail thumbnail;
  int duration;
  int width;
  int height;
  FormattedText caption;

  /// An animation message (GIF-style)..
  ///[animation] Animation file to be sent .
  /// [thumbnail] Animation thumbnail, if available .
  /// [duration] Duration of the animation, in seconds .
  /// [width] Width of the animation; may be replaced by the server .
  /// [height] Height of the animation; may be replaced by the server .
  /// [caption] Animation caption; 0-GetOption("message_caption_length_max") characters
  InputMessageAnimation(
      {this.animation,
      this.thumbnail,
      this.duration,
      this.width,
      this.height,
      this.caption});

  /// Parse from a json
  InputMessageAnimation.fromJson(Map<String, dynamic> json) {
    this.animation =
        InputFile.fromJson(json['animation'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "caption": this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = "inputMessageAnimation";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAudio implements InputMessageContent {
  var audio;
  InputThumbnail albumCoverThumbnail;
  int duration;
  String title;
  String performer;
  FormattedText caption;

  /// An audio message.
  ///[audio] Audio file to be sent .
  /// [albumCoverThumbnail] Thumbnail of the cover for the album, if available .
  /// [duration] Duration of the audio, in seconds; may be replaced by the server .
  /// [title] Title of the audio; 0-64 characters; may be replaced by the server.
  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server .
  /// [caption] Audio caption; 0-GetOption("message_caption_length_max") characters
  InputMessageAudio(
      {this.audio,
      this.albumCoverThumbnail,
      this.duration,
      this.title,
      this.performer,
      this.caption});

  /// Parse from a json
  InputMessageAudio.fromJson(Map<String, dynamic> json) {
    this.audio = InputFile.fromJson(json['audio'] ?? <String, dynamic>{});
    this.albumCoverThumbnail = InputThumbnail.fromJson(
        json['album_cover_thumbnail'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.title = json['title'];
    this.performer = json['performer'];
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail.toJson(),
      "duration": this.duration,
      "title": this.title,
      "performer": this.performer,
      "caption": this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = "inputMessageAudio";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDocument implements InputMessageContent {
  var document;
  InputThumbnail thumbnail;
  FormattedText caption;

  /// A document message (general file).
  ///[document] Document to be sent .
  /// [thumbnail] Document thumbnail, if available .
  /// [caption] Document caption; 0-GetOption("message_caption_length_max") characters
  InputMessageDocument({this.document, this.thumbnail, this.caption});

  /// Parse from a json
  InputMessageDocument.fromJson(Map<String, dynamic> json) {
    this.document = InputFile.fromJson(json['document'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "caption": this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = "inputMessageDocument";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePhoto implements InputMessageContent {
  var photo;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int width;
  int height;
  FormattedText caption;
  int ttl;

  /// A photo message.
  ///[photo] Photo to send .
  /// [thumbnail] Photo thumbnail to be sent, this is sent to the other party in secret chats only .
  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable .
  /// [width] Photo width .
  /// [height] Photo height .
  /// [caption] Photo caption; 0-GetOption("message_caption_length_max") characters.
  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  InputMessagePhoto(
      {this.photo,
      this.thumbnail,
      this.addedStickerFileIds,
      this.width,
      this.height,
      this.caption,
      this.ttl});

  /// Parse from a json
  InputMessagePhoto.fromJson(Map<String, dynamic> json) {
    this.photo = InputFile.fromJson(json['photo'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds =
        List<int>.from(json['added_sticker_file_ids'] ?? []);
    this.width = json['width'];
    this.height = json['height'];
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds,
      "width": this.width,
      "height": this.height,
      "caption": this.caption.toJson(),
      "ttl": this.ttl
    };
  }

  static const String CONSTRUCTOR = "inputMessagePhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageSticker implements InputMessageContent {
  var sticker;
  InputThumbnail thumbnail;
  int width;
  int height;

  /// A sticker message.
  ///[sticker] Sticker to be sent .
  /// [thumbnail] Sticker thumbnail, if available .
  /// [width] Sticker width .
  /// [height] Sticker height
  InputMessageSticker({this.sticker, this.thumbnail, this.width, this.height});

  /// Parse from a json
  InputMessageSticker.fromJson(Map<String, dynamic> json) {
    this.sticker = InputFile.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "width": this.width,
      "height": this.height
    };
  }

  static const String CONSTRUCTOR = "inputMessageSticker";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideo implements InputMessageContent {
  var video;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  bool supportsStreaming;
  FormattedText caption;
  int ttl;

  /// A video message.
  ///[video] Video to be sent .
  /// [thumbnail] Video thumbnail, if available .
  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable.
  /// [duration] Duration of the video, in seconds .
  /// [width] Video width .
  /// [height] Video height .
  /// [supportsStreaming] True, if the video should be tried to be streamed.
  /// [caption] Video caption; 0-GetOption("message_caption_length_max") characters .
  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  InputMessageVideo(
      {this.video,
      this.thumbnail,
      this.addedStickerFileIds,
      this.duration,
      this.width,
      this.height,
      this.supportsStreaming,
      this.caption,
      this.ttl});

  /// Parse from a json
  InputMessageVideo.fromJson(Map<String, dynamic> json) {
    this.video = InputFile.fromJson(json['video'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds =
        List<int>.from(json['added_sticker_file_ids'] ?? []);
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.supportsStreaming = json['supports_streaming'];
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds,
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "supports_streaming": this.supportsStreaming,
      "caption": this.caption.toJson(),
      "ttl": this.ttl
    };
  }

  static const String CONSTRUCTOR = "inputMessageVideo";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideoNote implements InputMessageContent {
  var videoNote;
  InputThumbnail thumbnail;
  int duration;
  int length;

  /// A video note message.
  ///[videoNote] Video note to be sent .
  /// [thumbnail] Video thumbnail, if available .
  /// [duration] Duration of the video, in seconds .
  /// [length] Video width and height; must be positive and not greater than 640
  InputMessageVideoNote(
      {this.videoNote, this.thumbnail, this.duration, this.length});

  /// Parse from a json
  InputMessageVideoNote.fromJson(Map<String, dynamic> json) {
    this.videoNote =
        InputFile.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "duration": this.duration,
      "length": this.length
    };
  }

  static const String CONSTRUCTOR = "inputMessageVideoNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVoiceNote implements InputMessageContent {
  var voiceNote;
  int duration;
  String waveform;
  FormattedText caption;

  /// A voice note message.
  ///[voiceNote] Voice note to be sent .
  /// [duration] Duration of the voice note, in seconds .
  /// [waveform] Waveform representation of the voice note, in 5-bit format .
  /// [caption] Voice note caption; 0-GetOption("message_caption_length_max") characters
  InputMessageVoiceNote(
      {this.voiceNote, this.duration, this.waveform, this.caption});

  /// Parse from a json
  InputMessageVoiceNote.fromJson(Map<String, dynamic> json) {
    this.voiceNote =
        InputFile.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.waveform = json['waveform'];
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote.toJson(),
      "duration": this.duration,
      "waveform": this.waveform,
      "caption": this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = "inputMessageVoiceNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageLocation implements InputMessageContent {
  Location location;
  int livePeriod;

  /// A message with a location.
  ///[location] Location to be sent .
  /// [livePeriod] Period for which the location can be updated, in seconds; should bebetween 60 and 86400 for a live location and 0 otherwise
  InputMessageLocation({this.location, this.livePeriod});

  /// Parse from a json
  InputMessageLocation.fromJson(Map<String, dynamic> json) {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "live_period": this.livePeriod
    };
  }

  static const String CONSTRUCTOR = "inputMessageLocation";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVenue implements InputMessageContent {
  Venue venue;

  /// A message with information about a venue.
  ///[venue] Venue to send
  InputMessageVenue({this.venue});

  /// Parse from a json
  InputMessageVenue.fromJson(Map<String, dynamic> json) {
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "venue": this.venue.toJson()};
  }

  static const String CONSTRUCTOR = "inputMessageVenue";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageContact implements InputMessageContent {
  Contact contact;

  /// A message containing a user contact.
  ///[contact] Contact to send
  InputMessageContact({this.contact});

  /// Parse from a json
  InputMessageContact.fromJson(Map<String, dynamic> json) {
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "contact": this.contact.toJson()};
  }

  static const String CONSTRUCTOR = "inputMessageContact";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageGame implements InputMessageContent {
  int botUserId;
  String gameShortName;

  /// A message with a game; not supported for channels or secret chats.
  ///[botUserId] User identifier of the bot that owns the game .
  /// [gameShortName] Short name of the game
  InputMessageGame({this.botUserId, this.gameShortName});

  /// Parse from a json
  InputMessageGame.fromJson(Map<String, dynamic> json) {
    this.botUserId = json['bot_user_id'];
    this.gameShortName = json['game_short_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "game_short_name": this.gameShortName
    };
  }

  static const String CONSTRUCTOR = "inputMessageGame";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageInvoice implements InputMessageContent {
  Invoice invoice;
  String title;
  String description;
  String photoUrl;
  int photoSize;
  int photoWidth;
  int photoHeight;
  String payload;
  String providerToken;
  String providerData;
  String startParameter;

  /// A message with an invoice; can be used only by bots and only in private chats.
  ///[invoice] Invoice .
  /// [title] Product title; 1-32 characters .
  /// [paramDescription] Product description; 0-255 characters .
  /// [photoUrl] Product photo URL; optional .
  /// [photoSize] Product photo size .
  /// [photoWidth] Product photo width .
  /// [photoHeight] Product photo height.
  /// [payload] The invoice payload .
  /// [providerToken] Payment provider token .
  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider .
  /// [startParameter] Unique invoice bot start_parameter for the generation of this invoice
  InputMessageInvoice(
      {this.invoice,
      this.title,
      this.description,
      this.photoUrl,
      this.photoSize,
      this.photoWidth,
      this.photoHeight,
      this.payload,
      this.providerToken,
      this.providerData,
      this.startParameter});

  /// Parse from a json
  InputMessageInvoice.fromJson(Map<String, dynamic> json) {
    this.invoice = Invoice.fromJson(json['invoice'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
    this.photoUrl = json['photo_url'];
    this.photoSize = json['photo_size'];
    this.photoWidth = json['photo_width'];
    this.photoHeight = json['photo_height'];
    this.payload = json['payload'];
    this.providerToken = json['provider_token'];
    this.providerData = json['provider_data'];
    this.startParameter = json['start_parameter'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice": this.invoice.toJson(),
      "title": this.title,
      "description": this.description,
      "photo_url": this.photoUrl,
      "photo_size": this.photoSize,
      "photo_width": this.photoWidth,
      "photo_height": this.photoHeight,
      "payload": this.payload,
      "provider_token": this.providerToken,
      "provider_data": this.providerData,
      "start_parameter": this.startParameter
    };
  }

  static const String CONSTRUCTOR = "inputMessageInvoice";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePoll implements InputMessageContent {
  String question;
  List<String> options;

  /// A message with a poll. Polls can't be sent to private or secret chats.
  ///[question] Poll question, 1-255 characters .
  /// [options] List of poll answer options, 2-10 strings 1-100 characters each
  InputMessagePoll({this.question, this.options});

  /// Parse from a json
  InputMessagePoll.fromJson(Map<String, dynamic> json) {
    this.question = json['question'];
    this.options = List<String>.from(json['options'] ?? []);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": this.question,
      "options": this.options
    };
  }

  static const String CONSTRUCTOR = "inputMessagePoll";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageForwarded implements InputMessageContent {
  int fromChatId;
  int messageId;
  bool inGameShare;

  /// A forwarded message.
  ///[fromChatId] Identifier for the chat this forwarded message came from .
  /// [messageId] Identifier of the message to forward .
  /// [inGameShare] True, if a game message should be shared within a launched game; applies only to game messages
  InputMessageForwarded({this.fromChatId, this.messageId, this.inGameShare});

  /// Parse from a json
  InputMessageForwarded.fromJson(Map<String, dynamic> json) {
    this.fromChatId = json['from_chat_id'];
    this.messageId = json['message_id'];
    this.inGameShare = json['in_game_share'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": this.fromChatId,
      "message_id": this.messageId,
      "in_game_share": this.inGameShare
    };
  }

  static const String CONSTRUCTOR = "inputMessageForwarded";

  @override
  String getConstructor() => CONSTRUCTOR;
}
