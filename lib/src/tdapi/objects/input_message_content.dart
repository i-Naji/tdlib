part of '../tdapi.dart';

class InputMessageContent extends TdObject {

  /// The content of a message to send
  const InputMessageContent();
  
  /// a InputMessageContent return type can be :
  /// * [InputMessageText]
  /// * [InputMessageAnimation]
  /// * [InputMessageAudio]
  /// * [InputMessageDocument]
  /// * [InputMessagePhoto]
  /// * [InputMessageSticker]
  /// * [InputMessageVideo]
  /// * [InputMessageVideoNote]
  /// * [InputMessageVoiceNote]
  /// * [InputMessageLocation]
  /// * [InputMessageVenue]
  /// * [InputMessageContact]
  /// * [InputMessageDice]
  /// * [InputMessageGame]
  /// * [InputMessageInvoice]
  /// * [InputMessagePoll]
  /// * [InputMessageForwarded]
  factory InputMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
        return const InputMessageContent();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputMessageContent copyWith() => const InputMessageContent();

  static const CONSTRUCTOR = 'inputMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageText extends InputMessageContent {

  /// A text message
  const InputMessageText({
    required this.text,
    required this.disableWebPagePreview,
    required this.clearDraft,
  });
  
  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  final FormattedText text;

  /// [disableWebPagePreview] True, if rich web page previews for URLs in the message text must be disabled
  final bool disableWebPagePreview;

  /// [clearDraft] True, if a chat message draft must be deleted
  final bool clearDraft;
  
  /// Parse from a json
  factory InputMessageText.fromJson(Map<String, dynamic> json) => InputMessageText(
    text: FormattedText.fromJson(json['text']),
    disableWebPagePreview: json['disable_web_page_preview'],
    clearDraft: json['clear_draft'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "disable_web_page_preview": disableWebPagePreview,
      "clear_draft": clearDraft,
    };
  }
  
  @override
  InputMessageText copyWith({
    FormattedText? text,
    bool? disableWebPagePreview,
    bool? clearDraft,
  }) => InputMessageText(
    text: text ?? this.text,
    disableWebPagePreview: disableWebPagePreview ?? this.disableWebPagePreview,
    clearDraft: clearDraft ?? this.clearDraft,
  );

  static const CONSTRUCTOR = 'inputMessageText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageAnimation extends InputMessageContent {

  /// An animation message (GIF-style).
  const InputMessageAnimation({
    required this.animation,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    this.caption,
  });
  
  /// [animation] Animation file to be sent 
  final InputFile animation;

  /// [thumbnail] Animation thumbnail; pass null to skip thumbnail uploading 
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the animation, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds
  final int duration;

  /// [width] Width of the animation; may be replaced by the server 
  final int width;

  /// [height] Height of the animation; may be replaced by the server 
  final int height;

  /// [caption] Animation caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) => InputMessageAnimation(
    animation: InputFile.fromJson(json['animation']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
    };
  }
  
  @override
  InputMessageAnimation copyWith({
    InputFile? animation,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    FormattedText? caption,
  }) => InputMessageAnimation(
    animation: animation ?? this.animation,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'inputMessageAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageAudio extends InputMessageContent {

  /// An audio message
  const InputMessageAudio({
    required this.audio,
    this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
    this.caption,
  });
  
  /// [audio] Audio file to be sent 
  final InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album; pass null to skip thumbnail uploading 
  final InputThumbnail? albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the server 
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server
  final String performer;

  /// [caption] Audio caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageAudio.fromJson(Map<String, dynamic> json) => InputMessageAudio(
    audio: InputFile.fromJson(json['audio']),
    albumCoverThumbnail: json['album_cover_thumbnail'] == null ? null : InputThumbnail.fromJson(json['album_cover_thumbnail']),
    duration: json['duration'],
    title: json['title'],
    performer: json['performer'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "duration": duration,
      "title": title,
      "performer": performer,
      "caption": caption?.toJson(),
    };
  }
  
  @override
  InputMessageAudio copyWith({
    InputFile? audio,
    InputThumbnail? albumCoverThumbnail,
    int? duration,
    String? title,
    String? performer,
    FormattedText? caption,
  }) => InputMessageAudio(
    audio: audio ?? this.audio,
    albumCoverThumbnail: albumCoverThumbnail ?? this.albumCoverThumbnail,
    duration: duration ?? this.duration,
    title: title ?? this.title,
    performer: performer ?? this.performer,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'inputMessageAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageDocument extends InputMessageContent {

  /// A document message (general file)
  const InputMessageDocument({
    required this.document,
    this.thumbnail,
    required this.disableContentTypeDetection,
    this.caption,
  });
  
  /// [document] Document to be sent 
  final InputFile document;

  /// [thumbnail] Document thumbnail; pass null to skip thumbnail uploading 
  final InputThumbnail? thumbnail;

  /// [disableContentTypeDetection] If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats 
  final bool disableContentTypeDetection;

  /// [caption] Document caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageDocument.fromJson(Map<String, dynamic> json) => InputMessageDocument(
    document: InputFile.fromJson(json['document']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    disableContentTypeDetection: json['disable_content_type_detection'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "disable_content_type_detection": disableContentTypeDetection,
      "caption": caption?.toJson(),
    };
  }
  
  @override
  InputMessageDocument copyWith({
    InputFile? document,
    InputThumbnail? thumbnail,
    bool? disableContentTypeDetection,
    FormattedText? caption,
  }) => InputMessageDocument(
    document: document ?? this.document,
    thumbnail: thumbnail ?? this.thumbnail,
    disableContentTypeDetection: disableContentTypeDetection ?? this.disableContentTypeDetection,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'inputMessageDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessagePhoto extends InputMessageContent {

  /// A photo message
  const InputMessagePhoto({
    required this.photo,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
    this.caption,
    required this.ttl,
  });
  
  /// [photo] Photo to send 
  final InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats 
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable 
  final List<int> addedStickerFileIds;

  /// [width] Photo width 
  final int width;

  /// [height] Photo height 
  final int height;

  /// [caption] Photo caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  final int ttl;
  
  /// Parse from a json
  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) => InputMessagePhoto(
    photo: InputFile.fromJson(json['photo']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
    width: json['width'],
    height: json['height'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
    ttl: json['ttl'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
      "ttl": ttl,
    };
  }
  
  @override
  InputMessagePhoto copyWith({
    InputFile? photo,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? width,
    int? height,
    FormattedText? caption,
    int? ttl,
  }) => InputMessagePhoto(
    photo: photo ?? this.photo,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    ttl: ttl ?? this.ttl,
  );

  static const CONSTRUCTOR = 'inputMessagePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageSticker extends InputMessageContent {

  /// A sticker message
  const InputMessageSticker({
    required this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
    required this.emoji,
  });
  
  /// [sticker] Sticker to be sent 
  final InputFile sticker;

  /// [thumbnail] Sticker thumbnail; pass null to skip thumbnail uploading 
  final InputThumbnail? thumbnail;

  /// [width] Sticker width 
  final int width;

  /// [height] Sticker height 
  final int height;

  /// [emoji] Emoji used to choose the sticker
  final String emoji;
  
  /// Parse from a json
  factory InputMessageSticker.fromJson(Map<String, dynamic> json) => InputMessageSticker(
    sticker: InputFile.fromJson(json['sticker']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    width: json['width'],
    height: json['height'],
    emoji: json['emoji'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "width": width,
      "height": height,
      "emoji": emoji,
    };
  }
  
  @override
  InputMessageSticker copyWith({
    InputFile? sticker,
    InputThumbnail? thumbnail,
    int? width,
    int? height,
    String? emoji,
  }) => InputMessageSticker(
    sticker: sticker ?? this.sticker,
    thumbnail: thumbnail ?? this.thumbnail,
    width: width ?? this.width,
    height: height ?? this.height,
    emoji: emoji ?? this.emoji,
  );

  static const CONSTRUCTOR = 'inputMessageSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageVideo extends InputMessageContent {

  /// A video message
  const InputMessageVideo({
    required this.video,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    this.caption,
    required this.ttl,
  });
  
  /// [video] Video to be sent 
  final InputFile video;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading 
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width 
  final int width;

  /// [height] Video height 
  final int height;

  /// [supportsStreaming] True, if the video is supposed to be streamed
  final bool supportsStreaming;

  /// [caption] Video caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  final int ttl;
  
  /// Parse from a json
  factory InputMessageVideo.fromJson(Map<String, dynamic> json) => InputMessageVideo(
    video: InputFile.fromJson(json['video']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    addedStickerFileIds: List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
    duration: json['duration'],
    width: json['width'],
    height: json['height'],
    supportsStreaming: json['supports_streaming'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
    ttl: json['ttl'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "supports_streaming": supportsStreaming,
      "caption": caption?.toJson(),
      "ttl": ttl,
    };
  }
  
  @override
  InputMessageVideo copyWith({
    InputFile? video,
    InputThumbnail? thumbnail,
    List<int>? addedStickerFileIds,
    int? duration,
    int? width,
    int? height,
    bool? supportsStreaming,
    FormattedText? caption,
    int? ttl,
  }) => InputMessageVideo(
    video: video ?? this.video,
    thumbnail: thumbnail ?? this.thumbnail,
    addedStickerFileIds: addedStickerFileIds ?? this.addedStickerFileIds,
    duration: duration ?? this.duration,
    width: width ?? this.width,
    height: height ?? this.height,
    supportsStreaming: supportsStreaming ?? this.supportsStreaming,
    caption: caption ?? this.caption,
    ttl: ttl ?? this.ttl,
  );

  static const CONSTRUCTOR = 'inputMessageVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageVideoNote extends InputMessageContent {

  /// A video note message
  const InputMessageVideoNote({
    required this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
  });
  
  /// [videoNote] Video note to be sent 
  final InputFile videoNote;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading 
  final InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds 
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;
  
  /// Parse from a json
  factory InputMessageVideoNote.fromJson(Map<String, dynamic> json) => InputMessageVideoNote(
    videoNote: InputFile.fromJson(json['video_note']),
    thumbnail: json['thumbnail'] == null ? null : InputThumbnail.fromJson(json['thumbnail']),
    duration: json['duration'],
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "duration": duration,
      "length": length,
    };
  }
  
  @override
  InputMessageVideoNote copyWith({
    InputFile? videoNote,
    InputThumbnail? thumbnail,
    int? duration,
    int? length,
  }) => InputMessageVideoNote(
    videoNote: videoNote ?? this.videoNote,
    thumbnail: thumbnail ?? this.thumbnail,
    duration: duration ?? this.duration,
    length: length ?? this.length,
  );

  static const CONSTRUCTOR = 'inputMessageVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageVoiceNote extends InputMessageContent {

  /// A voice note message
  const InputMessageVoiceNote({
    required this.voiceNote,
    required this.duration,
    required this.waveform,
    this.caption,
  });
  
  /// [voiceNote] Voice note to be sent 
  final InputFile voiceNote;

  /// [duration] Duration of the voice note, in seconds 
  final int duration;

  /// [waveform] Waveform representation of the voice note, in 5-bit format 
  final String waveform;

  /// [caption] Voice note caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;
  
  /// Parse from a json
  factory InputMessageVoiceNote.fromJson(Map<String, dynamic> json) => InputMessageVoiceNote(
    voiceNote: InputFile.fromJson(json['voice_note']),
    duration: json['duration'],
    waveform: json['waveform'],
    caption: json['caption'] == null ? null : FormattedText.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote.toJson(),
      "duration": duration,
      "waveform": waveform,
      "caption": caption?.toJson(),
    };
  }
  
  @override
  InputMessageVoiceNote copyWith({
    InputFile? voiceNote,
    int? duration,
    String? waveform,
    FormattedText? caption,
  }) => InputMessageVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    duration: duration ?? this.duration,
    waveform: waveform ?? this.waveform,
    caption: caption ?? this.caption,
  );

  static const CONSTRUCTOR = 'inputMessageVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageLocation extends InputMessageContent {

  /// A message with a location
  const InputMessageLocation({
    required this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });
  
  /// [location] Location to be sent 
  final Location location;

  /// [livePeriod] Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise
  final int livePeriod;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  final int proximityAlertRadius;
  
  /// Parse from a json
  factory InputMessageLocation.fromJson(Map<String, dynamic> json) => InputMessageLocation(
    location: Location.fromJson(json['location']),
    livePeriod: json['live_period'],
    heading: json['heading'],
    proximityAlertRadius: json['proximity_alert_radius'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
    };
  }
  
  @override
  InputMessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
  }) => InputMessageLocation(
    location: location ?? this.location,
    livePeriod: livePeriod ?? this.livePeriod,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

  static const CONSTRUCTOR = 'inputMessageLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageVenue extends InputMessageContent {

  /// A message with information about a venue
  const InputMessageVenue({
    required this.venue,
  });
  
  /// [venue] Venue to send
  final Venue venue;
  
  /// Parse from a json
  factory InputMessageVenue.fromJson(Map<String, dynamic> json) => InputMessageVenue(
    venue: Venue.fromJson(json['venue']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "venue": venue.toJson(),
    };
  }
  
  @override
  InputMessageVenue copyWith({
    Venue? venue,
  }) => InputMessageVenue(
    venue: venue ?? this.venue,
  );

  static const CONSTRUCTOR = 'inputMessageVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageContact extends InputMessageContent {

  /// A message containing a user contact
  const InputMessageContact({
    required this.contact,
  });
  
  /// [contact] Contact to send
  final Contact contact;
  
  /// Parse from a json
  factory InputMessageContact.fromJson(Map<String, dynamic> json) => InputMessageContact(
    contact: Contact.fromJson(json['contact']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "contact": contact.toJson(),
    };
  }
  
  @override
  InputMessageContact copyWith({
    Contact? contact,
  }) => InputMessageContact(
    contact: contact ?? this.contact,
  );

  static const CONSTRUCTOR = 'inputMessageContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageDice extends InputMessageContent {

  /// A dice message
  const InputMessageDice({
    required this.emoji,
    required this.clearDraft,
  });
  
  /// [emoji] Emoji on which the dice throw animation is based 
  final String emoji;

  /// [clearDraft] True, if the chat message draft must be deleted
  final bool clearDraft;
  
  /// Parse from a json
  factory InputMessageDice.fromJson(Map<String, dynamic> json) => InputMessageDice(
    emoji: json['emoji'],
    clearDraft: json['clear_draft'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "clear_draft": clearDraft,
    };
  }
  
  @override
  InputMessageDice copyWith({
    String? emoji,
    bool? clearDraft,
  }) => InputMessageDice(
    emoji: emoji ?? this.emoji,
    clearDraft: clearDraft ?? this.clearDraft,
  );

  static const CONSTRUCTOR = 'inputMessageDice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageGame extends InputMessageContent {

  /// A message with a game; not supported for channels or secret chats
  const InputMessageGame({
    required this.botUserId,
    required this.gameShortName,
  });
  
  /// [botUserId] User identifier of the bot that owns the game 
  final int botUserId;

  /// [gameShortName] Short name of the game
  final String gameShortName;
  
  /// Parse from a json
  factory InputMessageGame.fromJson(Map<String, dynamic> json) => InputMessageGame(
    botUserId: json['bot_user_id'],
    gameShortName: json['game_short_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "game_short_name": gameShortName,
    };
  }
  
  @override
  InputMessageGame copyWith({
    int? botUserId,
    String? gameShortName,
  }) => InputMessageGame(
    botUserId: botUserId ?? this.botUserId,
    gameShortName: gameShortName ?? this.gameShortName,
  );

  static const CONSTRUCTOR = 'inputMessageGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageInvoice extends InputMessageContent {

  /// A message with an invoice; can be used only by bots
  const InputMessageInvoice({
    required this.invoice,
    required this.title,
    required this.description,
    required this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
  });
  
  /// [invoice] Invoice 
  final Invoice invoice;

  /// [title] Product title; 1-32 characters 
  final String title;

  /// [description] Product description; 0-255 characters
  final String description;

  /// [photoUrl] Product photo URL; optional
  final String photoUrl;

  /// [photoSize] Product photo size 
  final int photoSize;

  /// [photoWidth] Product photo width 
  final int photoWidth;

  /// [photoHeight] Product photo height
  final int photoHeight;

  /// [payload] The invoice payload
  final String payload;

  /// [providerToken] Payment provider token 
  final String providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider
  final String providerData;

  /// [startParameter] Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message
  final String startParameter;
  
  /// Parse from a json
  factory InputMessageInvoice.fromJson(Map<String, dynamic> json) => InputMessageInvoice(
    invoice: Invoice.fromJson(json['invoice']),
    title: json['title'],
    description: json['description'],
    photoUrl: json['photo_url'],
    photoSize: json['photo_size'],
    photoWidth: json['photo_width'],
    photoHeight: json['photo_height'],
    payload: json['payload'],
    providerToken: json['provider_token'],
    providerData: json['provider_data'],
    startParameter: json['start_parameter'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invoice": invoice.toJson(),
      "title": title,
      "description": description,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "payload": payload,
      "provider_token": providerToken,
      "provider_data": providerData,
      "start_parameter": startParameter,
    };
  }
  
  @override
  InputMessageInvoice copyWith({
    Invoice? invoice,
    String? title,
    String? description,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    String? payload,
    String? providerToken,
    String? providerData,
    String? startParameter,
  }) => InputMessageInvoice(
    invoice: invoice ?? this.invoice,
    title: title ?? this.title,
    description: description ?? this.description,
    photoUrl: photoUrl ?? this.photoUrl,
    photoSize: photoSize ?? this.photoSize,
    photoWidth: photoWidth ?? this.photoWidth,
    photoHeight: photoHeight ?? this.photoHeight,
    payload: payload ?? this.payload,
    providerToken: providerToken ?? this.providerToken,
    providerData: providerData ?? this.providerData,
    startParameter: startParameter ?? this.startParameter,
  );

  static const CONSTRUCTOR = 'inputMessageInvoice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessagePoll extends InputMessageContent {

  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
  const InputMessagePoll({
    required this.question,
    required this.options,
    required this.isAnonymous,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
  });
  
  /// [question] Poll question; 1-255 characters (up to 300 characters for bots) 
  final String question;

  /// [options] List of poll answer options, 2-10 strings 1-100 characters each
  final List<String> options;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  final bool isAnonymous;

  /// [type] Type of the poll
  final PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds; for bots only
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will automatically be closed; for bots only
  final int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots only
  final bool isClosed;
  
  /// Parse from a json
  factory InputMessagePoll.fromJson(Map<String, dynamic> json) => InputMessagePoll(
    question: json['question'],
    options: List<String>.from((json['options'] ?? []).map((item) => item).toList()),
    isAnonymous: json['is_anonymous'],
    type: PollType.fromJson(json['type']),
    openPeriod: json['open_period'],
    closeDate: json['close_date'],
    isClosed: json['is_closed'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "question": question,
      "options": options.map((i) => i).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }
  
  @override
  InputMessagePoll copyWith({
    String? question,
    List<String>? options,
    bool? isAnonymous,
    PollType? type,
    int? openPeriod,
    int? closeDate,
    bool? isClosed,
  }) => InputMessagePoll(
    question: question ?? this.question,
    options: options ?? this.options,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    type: type ?? this.type,
    openPeriod: openPeriod ?? this.openPeriod,
    closeDate: closeDate ?? this.closeDate,
    isClosed: isClosed ?? this.isClosed,
  );

  static const CONSTRUCTOR = 'inputMessagePoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputMessageForwarded extends InputMessageContent {

  /// A forwarded message
  const InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    this.copyOptions,
  });
  
  /// [fromChatId] Identifier for the chat this forwarded message came from 
  final int fromChatId;

  /// [messageId] Identifier of the message to forward
  final int messageId;

  /// [inGameShare] True, if a game message is being shared from a launched game; applies only to game messages
  final bool inGameShare;

  /// [copyOptions] Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual
  final MessageCopyOptions? copyOptions;
  
  /// Parse from a json
  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) => InputMessageForwarded(
    fromChatId: json['from_chat_id'],
    messageId: json['message_id'],
    inGameShare: json['in_game_share'],
    copyOptions: json['copy_options'] == null ? null : MessageCopyOptions.fromJson(json['copy_options']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": fromChatId,
      "message_id": messageId,
      "in_game_share": inGameShare,
      "copy_options": copyOptions?.toJson(),
    };
  }
  
  @override
  InputMessageForwarded copyWith({
    int? fromChatId,
    int? messageId,
    bool? inGameShare,
    MessageCopyOptions? copyOptions,
  }) => InputMessageForwarded(
    fromChatId: fromChatId ?? this.fromChatId,
    messageId: messageId ?? this.messageId,
    inGameShare: inGameShare ?? this.inGameShare,
    copyOptions: copyOptions ?? this.copyOptions,
  );

  static const CONSTRUCTOR = 'inputMessageForwarded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
