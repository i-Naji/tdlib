part of '../tdapi.dart';

class InputMessageContent extends TdObject {
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
  /// * InputMessageDice
  /// * InputMessageGame
  /// * InputMessageInvoice
  /// * InputMessagePoll
  /// * InputMessageForwarded
  factory InputMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
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
      case InputMessageDice.CONSTRUCTOR:
        return InputMessageDice.fromJson(json);
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

  static const CONSTRUCTOR = 'inputMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageText extends InputMessageContent {
  /// A text message
  InputMessageText({this.text, this.disableWebPagePreview, this.clearDraft});

  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  FormattedText text;

  /// [disableWebPagePreview] True, if rich web page previews for URLs in the message text should be disabled
  bool disableWebPagePreview;

  /// [clearDraft] True, if a chat message draft should be deleted
  bool clearDraft;

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
      "text": this.text == null ? null : this.text.toJson(),
      "disable_web_page_preview": this.disableWebPagePreview,
      "clear_draft": this.clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAnimation extends InputMessageContent {
  /// An animation message (GIF-style).
  InputMessageAnimation(
      {this.animation,
      this.thumbnail,
      this.addedStickerFileIds,
      this.duration,
      this.width,
      this.height,
      this.caption});

  /// [animation] Animation file to be sent
  InputFile animation;

  /// [thumbnail] Animation thumbnail, if available
  InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the animation, if applicable
  List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds
  int duration;

  /// [width] Width of the animation; may be replaced by the server
  int width;

  /// [height] Height of the animation; may be replaced by the server
  int height;

  /// [caption] Animation caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// Parse from a json
  InputMessageAnimation.fromJson(Map<String, dynamic> json) {
    this.animation =
        InputFile.fromJson(json['animation'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds = List<int>.from(
        (json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
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
      "animation": this.animation == null ? null : this.animation.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAudio extends InputMessageContent {
  /// An audio message
  InputMessageAudio(
      {this.audio,
      this.albumCoverThumbnail,
      this.duration,
      this.title,
      this.performer,
      this.caption});

  /// [audio] Audio file to be sent
  InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album, if available
  InputThumbnail albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the server
  int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server
  String performer;

  /// [caption] Audio caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

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
      "audio": this.audio == null ? null : this.audio.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail == null
          ? null
          : this.albumCoverThumbnail.toJson(),
      "duration": this.duration,
      "title": this.title,
      "performer": this.performer,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDocument extends InputMessageContent {
  /// A document message (general file)
  InputMessageDocument(
      {this.document,
      this.thumbnail,
      this.disableContentTypeDetection,
      this.caption});

  /// [document] Document to be sent
  InputFile document;

  /// [thumbnail] Document thumbnail, if available
  InputThumbnail thumbnail;

  /// [disableContentTypeDetection] If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats
  bool disableContentTypeDetection;

  /// [caption] Document caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// Parse from a json
  InputMessageDocument.fromJson(Map<String, dynamic> json) {
    this.document = InputFile.fromJson(json['document'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.disableContentTypeDetection = json['disable_content_type_detection'];
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document == null ? null : this.document.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "disable_content_type_detection": this.disableContentTypeDetection,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePhoto extends InputMessageContent {
  /// A photo message
  InputMessagePhoto(
      {this.photo,
      this.thumbnail,
      this.addedStickerFileIds,
      this.width,
      this.height,
      this.caption,
      this.ttl});

  /// [photo] Photo to send
  InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent, this is sent to the other party in secret chats only
  InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable
  List<int> addedStickerFileIds;

  /// [width] Photo width
  int width;

  /// [height] Photo height
  int height;

  /// [caption] Photo caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  int ttl;

  /// Parse from a json
  InputMessagePhoto.fromJson(Map<String, dynamic> json) {
    this.photo = InputFile.fromJson(json['photo'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds = List<int>.from(
        (json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
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
      "photo": this.photo == null ? null : this.photo.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "width": this.width,
      "height": this.height,
      "caption": this.caption == null ? null : this.caption.toJson(),
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageSticker extends InputMessageContent {
  /// A sticker message
  InputMessageSticker(
      {this.sticker, this.thumbnail, this.width, this.height, this.emoji});

  /// [sticker] Sticker to be sent
  InputFile sticker;

  /// [thumbnail] Sticker thumbnail, if available
  InputThumbnail thumbnail;

  /// [width] Sticker width
  int width;

  /// [height] Sticker height
  int height;

  /// [emoji] Emoji used to choose the sticker
  String emoji;

  /// Parse from a json
  InputMessageSticker.fromJson(Map<String, dynamic> json) {
    this.sticker = InputFile.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
    this.emoji = json['emoji'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "width": this.width,
      "height": this.height,
      "emoji": this.emoji,
    };
  }

  static const CONSTRUCTOR = 'inputMessageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideo extends InputMessageContent {
  /// A video message
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

  /// [video] Video to be sent
  InputFile video;

  /// [thumbnail] Video thumbnail, if available
  InputThumbnail thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable
  List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  int duration;

  /// [width] Video width
  int width;

  /// [height] Video height
  int height;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  bool supportsStreaming;

  /// [caption] Video caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  int ttl;

  /// Parse from a json
  InputMessageVideo.fromJson(Map<String, dynamic> json) {
    this.video = InputFile.fromJson(json['video'] ?? <String, dynamic>{});
    this.thumbnail =
        InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds = List<int>.from(
        (json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
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
      "video": this.video == null ? null : this.video.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "supports_streaming": this.supportsStreaming,
      "caption": this.caption == null ? null : this.caption.toJson(),
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideoNote extends InputMessageContent {
  /// A video note message
  InputMessageVideoNote(
      {this.videoNote, this.thumbnail, this.duration, this.length});

  /// [videoNote] Video note to be sent
  InputFile videoNote;

  /// [thumbnail] Video thumbnail, if available
  InputThumbnail thumbnail;

  /// [duration] Duration of the video, in seconds
  int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  int length;

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
      "video_note": this.videoNote == null ? null : this.videoNote.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "duration": this.duration,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVoiceNote extends InputMessageContent {
  /// A voice note message
  InputMessageVoiceNote(
      {this.voiceNote, this.duration, this.waveform, this.caption});

  /// [voiceNote] Voice note to be sent
  InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds
  int duration;

  /// [waveform] Waveform representation of the voice note, in 5-bit format
  String waveform;

  /// [caption] Voice note caption; 0-GetOption("message_caption_length_max") characters
  FormattedText caption;

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
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "duration": this.duration,
      "waveform": this.waveform,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageLocation extends InputMessageContent {
  /// A message with a location
  InputMessageLocation(
      {this.location,
      this.livePeriod,
      this.heading,
      this.proximityAlertRadius});

  /// [location] Location to be sent
  Location location;

  /// [livePeriod] Period for which the location can be updated, in seconds; should be between 60 and 86400 for a live location and 0 otherwise
  int livePeriod;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  int proximityAlertRadius;

  /// Parse from a json
  InputMessageLocation.fromJson(Map<String, dynamic> json) {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
    this.heading = json['heading'];
    this.proximityAlertRadius = json['proximity_alert_radius'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location == null ? null : this.location.toJson(),
      "live_period": this.livePeriod,
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
    };
  }

  static const CONSTRUCTOR = 'inputMessageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVenue extends InputMessageContent {
  /// A message with information about a venue
  InputMessageVenue({this.venue});

  /// [venue] Venue to send
  Venue venue;

  /// Parse from a json
  InputMessageVenue.fromJson(Map<String, dynamic> json) {
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": this.venue == null ? null : this.venue.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageContact extends InputMessageContent {
  /// A message containing a user contact
  InputMessageContact({this.contact});

  /// [contact] Contact to send
  Contact contact;

  /// Parse from a json
  InputMessageContact.fromJson(Map<String, dynamic> json) {
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact == null ? null : this.contact.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDice extends InputMessageContent {
  /// A dice message
  InputMessageDice({this.emoji, this.clearDraft});

  /// [emoji] Emoji on which the dice throw animation is based
  String emoji;

  /// [clearDraft] True, if a chat message draft should be deleted
  bool clearDraft;

  /// Parse from a json
  InputMessageDice.fromJson(Map<String, dynamic> json) {
    this.emoji = json['emoji'];
    this.clearDraft = json['clear_draft'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "clear_draft": this.clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageGame extends InputMessageContent {
  /// A message with a game; not supported for channels or secret chats
  InputMessageGame({this.botUserId, this.gameShortName});

  /// [botUserId] User identifier of the bot that owns the game
  int botUserId;

  /// [gameShortName] Short name of the game
  String gameShortName;

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
      "game_short_name": this.gameShortName,
    };
  }

  static const CONSTRUCTOR = 'inputMessageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageInvoice extends InputMessageContent {
  /// A message with an invoice; can be used only by bots and only in private chats
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

  /// [invoice] Invoice
  Invoice invoice;

  /// [title] Product title; 1-32 characters
  String title;

  /// [description] Product description; 0-255 characters
  String description;

  /// [photoUrl] Product photo URL; optional
  String photoUrl;

  /// [photoSize] Product photo size
  int photoSize;

  /// [photoWidth] Product photo width
  int photoWidth;

  /// [photoHeight] Product photo height
  int photoHeight;

  /// [payload] The invoice payload
  String payload;

  /// [providerToken] Payment provider token
  String providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider
  String providerData;

  /// [startParameter] Unique invoice bot start_parameter for the generation of this invoice
  String startParameter;

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
      "invoice": this.invoice == null ? null : this.invoice.toJson(),
      "title": this.title,
      "description": this.description,
      "photo_url": this.photoUrl,
      "photo_size": this.photoSize,
      "photo_width": this.photoWidth,
      "photo_height": this.photoHeight,
      "payload": this.payload,
      "provider_token": this.providerToken,
      "provider_data": this.providerData,
      "start_parameter": this.startParameter,
    };
  }

  static const CONSTRUCTOR = 'inputMessageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePoll extends InputMessageContent {
  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
  InputMessagePoll(
      {this.question,
      this.options,
      this.isAnonymous,
      this.type,
      this.openPeriod,
      this.closeDate,
      this.isClosed});

  /// [question] Poll question, 1-255 characters (up to 300 characters for bots)
  String question;

  /// [options] List of poll answer options, 2-10 strings 1-100 characters each
  List<String> options;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  bool isAnonymous;

  /// [type] Type of the poll
  PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds; for bots only
  int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will be automatically closed; for bots only
  int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots only
  bool isClosed;

  /// Parse from a json
  InputMessagePoll.fromJson(Map<String, dynamic> json) {
    this.question = json['question'];
    this.options =
        List<String>.from((json['options'] ?? []).map((item) => item).toList());
    this.isAnonymous = json['is_anonymous'];
    this.type = PollType.fromJson(json['type'] ?? <String, dynamic>{});
    this.openPeriod = json['open_period'];
    this.closeDate = json['close_date'];
    this.isClosed = json['is_closed'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": this.question,
      "options": this.options.map((i) => i).toList(),
      "is_anonymous": this.isAnonymous,
      "type": this.type == null ? null : this.type.toJson(),
      "open_period": this.openPeriod,
      "close_date": this.closeDate,
      "is_closed": this.isClosed,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageForwarded extends InputMessageContent {
  /// A forwarded message
  InputMessageForwarded(
      {this.fromChatId, this.messageId, this.inGameShare, this.copyOptions});

  /// [fromChatId] Identifier for the chat this forwarded message came from
  int fromChatId;

  /// [messageId] Identifier of the message to forward
  int messageId;

  /// [inGameShare] True, if a game message should be shared within a launched game; applies only to game messages
  bool inGameShare;

  /// [copyOptions] Options to be used to copy content of the message without a link to the original message
  MessageCopyOptions copyOptions;

  /// Parse from a json
  InputMessageForwarded.fromJson(Map<String, dynamic> json) {
    this.fromChatId = json['from_chat_id'];
    this.messageId = json['message_id'];
    this.inGameShare = json['in_game_share'];
    this.copyOptions = MessageCopyOptions.fromJson(
        json['copy_options'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": this.fromChatId,
      "message_id": this.messageId,
      "in_game_share": this.inGameShare,
      "copy_options":
          this.copyOptions == null ? null : this.copyOptions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageForwarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}
