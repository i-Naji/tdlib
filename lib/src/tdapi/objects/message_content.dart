part of '../tdapi.dart';

class MessageContent extends TdObject {
  /// Contains the content of a message
  const MessageContent();

  /// a MessageContent return type can be :
  /// * [MessageText]
  /// * [MessageAnimation]
  /// * [MessageAudio]
  /// * [MessageDocument]
  /// * [MessagePhoto]
  /// * [MessageExpiredPhoto]
  /// * [MessageSticker]
  /// * [MessageVideo]
  /// * [MessageExpiredVideo]
  /// * [MessageVideoNote]
  /// * [MessageVoiceNote]
  /// * [MessageLocation]
  /// * [MessageVenue]
  /// * [MessageContact]
  /// * [MessageAnimatedEmoji]
  /// * [MessageDice]
  /// * [MessageGame]
  /// * [MessagePoll]
  /// * [MessageStory]
  /// * [MessageInvoice]
  /// * [MessageCall]
  /// * [MessageVideoChatScheduled]
  /// * [MessageVideoChatStarted]
  /// * [MessageVideoChatEnded]
  /// * [MessageInviteVideoChatParticipants]
  /// * [MessageBasicGroupChatCreate]
  /// * [MessageSupergroupChatCreate]
  /// * [MessageChatChangeTitle]
  /// * [MessageChatChangePhoto]
  /// * [MessageChatDeletePhoto]
  /// * [MessageChatAddMembers]
  /// * [MessageChatJoinByLink]
  /// * [MessageChatJoinByRequest]
  /// * [MessageChatDeleteMember]
  /// * [MessageChatUpgradeTo]
  /// * [MessageChatUpgradeFrom]
  /// * [MessagePinMessage]
  /// * [MessageScreenshotTaken]
  /// * [MessageChatSetBackground]
  /// * [MessageChatSetTheme]
  /// * [MessageChatSetMessageAutoDeleteTime]
  /// * [MessageForumTopicCreated]
  /// * [MessageForumTopicEdited]
  /// * [MessageForumTopicIsClosedToggled]
  /// * [MessageForumTopicIsHiddenToggled]
  /// * [MessageSuggestProfilePhoto]
  /// * [MessageCustomServiceAction]
  /// * [MessageGameScore]
  /// * [MessagePaymentSuccessful]
  /// * [MessagePaymentSuccessfulBot]
  /// * [MessageGiftedPremium]
  /// * [MessageContactRegistered]
  /// * [MessageUserShared]
  /// * [MessageChatShared]
  /// * [MessageWebsiteConnected]
  /// * [MessageBotWriteAccessAllowed]
  /// * [MessageWebAppDataSent]
  /// * [MessageWebAppDataReceived]
  /// * [MessagePassportDataSent]
  /// * [MessagePassportDataReceived]
  /// * [MessageProximityAlertTriggered]
  /// * [MessageUnsupported]
  factory MessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageText.CONSTRUCTOR:
        return MessageText.fromJson(json);
      case MessageAnimation.CONSTRUCTOR:
        return MessageAnimation.fromJson(json);
      case MessageAudio.CONSTRUCTOR:
        return MessageAudio.fromJson(json);
      case MessageDocument.CONSTRUCTOR:
        return MessageDocument.fromJson(json);
      case MessagePhoto.CONSTRUCTOR:
        return MessagePhoto.fromJson(json);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return MessageExpiredPhoto.fromJson(json);
      case MessageSticker.CONSTRUCTOR:
        return MessageSticker.fromJson(json);
      case MessageVideo.CONSTRUCTOR:
        return MessageVideo.fromJson(json);
      case MessageExpiredVideo.CONSTRUCTOR:
        return MessageExpiredVideo.fromJson(json);
      case MessageVideoNote.CONSTRUCTOR:
        return MessageVideoNote.fromJson(json);
      case MessageVoiceNote.CONSTRUCTOR:
        return MessageVoiceNote.fromJson(json);
      case MessageLocation.CONSTRUCTOR:
        return MessageLocation.fromJson(json);
      case MessageVenue.CONSTRUCTOR:
        return MessageVenue.fromJson(json);
      case MessageContact.CONSTRUCTOR:
        return MessageContact.fromJson(json);
      case MessageAnimatedEmoji.CONSTRUCTOR:
        return MessageAnimatedEmoji.fromJson(json);
      case MessageDice.CONSTRUCTOR:
        return MessageDice.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageStory.CONSTRUCTOR:
        return MessageStory.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessageVideoChatScheduled.CONSTRUCTOR:
        return MessageVideoChatScheduled.fromJson(json);
      case MessageVideoChatStarted.CONSTRUCTOR:
        return MessageVideoChatStarted.fromJson(json);
      case MessageVideoChatEnded.CONSTRUCTOR:
        return MessageVideoChatEnded.fromJson(json);
      case MessageInviteVideoChatParticipants.CONSTRUCTOR:
        return MessageInviteVideoChatParticipants.fromJson(json);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return MessageChatDeletePhoto.fromJson(json);
      case MessageChatAddMembers.CONSTRUCTOR:
        return MessageChatAddMembers.fromJson(json);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatJoinByRequest.CONSTRUCTOR:
        return MessageChatJoinByRequest.fromJson(json);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return MessageChatDeleteMember.fromJson(json);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessagePinMessage.CONSTRUCTOR:
        return MessagePinMessage.fromJson(json);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return MessageScreenshotTaken.fromJson(json);
      case MessageChatSetBackground.CONSTRUCTOR:
        return MessageChatSetBackground.fromJson(json);
      case MessageChatSetTheme.CONSTRUCTOR:
        return MessageChatSetTheme.fromJson(json);
      case MessageChatSetMessageAutoDeleteTime.CONSTRUCTOR:
        return MessageChatSetMessageAutoDeleteTime.fromJson(json);
      case MessageForumTopicCreated.CONSTRUCTOR:
        return MessageForumTopicCreated.fromJson(json);
      case MessageForumTopicEdited.CONSTRUCTOR:
        return MessageForumTopicEdited.fromJson(json);
      case MessageForumTopicIsClosedToggled.CONSTRUCTOR:
        return MessageForumTopicIsClosedToggled.fromJson(json);
      case MessageForumTopicIsHiddenToggled.CONSTRUCTOR:
        return MessageForumTopicIsHiddenToggled.fromJson(json);
      case MessageSuggestProfilePhoto.CONSTRUCTOR:
        return MessageSuggestProfilePhoto.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageGiftedPremium.CONSTRUCTOR:
        return MessageGiftedPremium.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessageUserShared.CONSTRUCTOR:
        return MessageUserShared.fromJson(json);
      case MessageChatShared.CONSTRUCTOR:
        return MessageChatShared.fromJson(json);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return MessageWebsiteConnected.fromJson(json);
      case MessageBotWriteAccessAllowed.CONSTRUCTOR:
        return MessageBotWriteAccessAllowed.fromJson(json);
      case MessageWebAppDataSent.CONSTRUCTOR:
        return MessageWebAppDataSent.fromJson(json);
      case MessageWebAppDataReceived.CONSTRUCTOR:
        return MessageWebAppDataReceived.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      default:
        return const MessageContent();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageContent copyWith() => const MessageContent();

  static const CONSTRUCTOR = 'messageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageText extends MessageContent {
  /// A text message
  const MessageText({
    required this.text,
    this.webPage,
  });

  /// [text] Text of the message
  final FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be null
  final WebPage? webPage;

  /// Parse from a json
  factory MessageText.fromJson(Map<String, dynamic> json) => MessageText(
        text: FormattedText.fromJson(json['text']),
        webPage: json['web_page'] == null
            ? null
            : WebPage.fromJson(json['web_page']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "web_page": webPage?.toJson(),
    };
  }

  @override
  MessageText copyWith({
    FormattedText? text,
    WebPage? webPage,
  }) =>
      MessageText(
        text: text ?? this.text,
        webPage: webPage ?? this.webPage,
      );

  static const CONSTRUCTOR = 'messageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAnimation extends MessageContent {
  /// An animation message (GIF-style).
  const MessageAnimation({
    required this.animation,
    required this.caption,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [animation] The animation description
  final Animation animation;

  /// [caption] Animation caption
  final FormattedText caption;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  final bool isSecret;

  /// Parse from a json
  factory MessageAnimation.fromJson(Map<String, dynamic> json) =>
      MessageAnimation(
        animation: Animation.fromJson(json['animation']),
        caption: FormattedText.fromJson(json['caption']),
        hasSpoiler: json['has_spoiler'],
        isSecret: json['is_secret'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "caption": caption.toJson(),
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
    };
  }

  @override
  MessageAnimation copyWith({
    Animation? animation,
    FormattedText? caption,
    bool? hasSpoiler,
    bool? isSecret,
  }) =>
      MessageAnimation(
        animation: animation ?? this.animation,
        caption: caption ?? this.caption,
        hasSpoiler: hasSpoiler ?? this.hasSpoiler,
        isSecret: isSecret ?? this.isSecret,
      );

  static const CONSTRUCTOR = 'messageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAudio extends MessageContent {
  /// An audio message
  const MessageAudio({
    required this.audio,
    required this.caption,
  });

  /// [audio] The audio description
  final Audio audio;

  /// [caption] Audio caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageAudio.fromJson(Map<String, dynamic> json) => MessageAudio(
        audio: Audio.fromJson(json['audio']),
        caption: FormattedText.fromJson(json['caption']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  MessageAudio copyWith({
    Audio? audio,
    FormattedText? caption,
  }) =>
      MessageAudio(
        audio: audio ?? this.audio,
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'messageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDocument extends MessageContent {
  /// A document message (general file)
  const MessageDocument({
    required this.document,
    required this.caption,
  });

  /// [document] The document description
  final Document document;

  /// [caption] Document caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageDocument.fromJson(Map<String, dynamic> json) =>
      MessageDocument(
        document: Document.fromJson(json['document']),
        caption: FormattedText.fromJson(json['caption']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  MessageDocument copyWith({
    Document? document,
    FormattedText? caption,
  }) =>
      MessageDocument(
        document: document ?? this.document,
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'messageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePhoto extends MessageContent {
  /// A photo message
  const MessagePhoto({
    required this.photo,
    required this.caption,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [photo] The photo
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  final bool isSecret;

  /// Parse from a json
  factory MessagePhoto.fromJson(Map<String, dynamic> json) => MessagePhoto(
        photo: Photo.fromJson(json['photo']),
        caption: FormattedText.fromJson(json['caption']),
        hasSpoiler: json['has_spoiler'],
        isSecret: json['is_secret'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "caption": caption.toJson(),
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
    };
  }

  @override
  MessagePhoto copyWith({
    Photo? photo,
    FormattedText? caption,
    bool? hasSpoiler,
    bool? isSecret,
  }) =>
      MessagePhoto(
        photo: photo ?? this.photo,
        caption: caption ?? this.caption,
        hasSpoiler: hasSpoiler ?? this.hasSpoiler,
        isSecret: isSecret ?? this.isSecret,
      );

  static const CONSTRUCTOR = 'messagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredPhoto extends MessageContent {
  /// A self-destructed photo message
  const MessageExpiredPhoto();

  /// Parse from a json
  factory MessageExpiredPhoto.fromJson(Map<String, dynamic> json) =>
      const MessageExpiredPhoto();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageExpiredPhoto copyWith() => const MessageExpiredPhoto();

  static const CONSTRUCTOR = 'messageExpiredPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSticker extends MessageContent {
  /// A sticker message
  const MessageSticker({
    required this.sticker,
    required this.isPremium,
  });

  /// [sticker] The sticker description
  final Sticker sticker;

  /// [isPremium] True, if premium animation of the sticker must be played
  final bool isPremium;

  /// Parse from a json
  factory MessageSticker.fromJson(Map<String, dynamic> json) => MessageSticker(
        sticker: Sticker.fromJson(json['sticker']),
        isPremium: json['is_premium'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "is_premium": isPremium,
    };
  }

  @override
  MessageSticker copyWith({
    Sticker? sticker,
    bool? isPremium,
  }) =>
      MessageSticker(
        sticker: sticker ?? this.sticker,
        isPremium: isPremium ?? this.isPremium,
      );

  static const CONSTRUCTOR = 'messageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideo extends MessageContent {
  /// A video message
  const MessageVideo({
    required this.video,
    required this.caption,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [video] The video description
  final Video video;

  /// [caption] Video caption
  final FormattedText caption;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler animation
  final bool hasSpoiler;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  final bool isSecret;

  /// Parse from a json
  factory MessageVideo.fromJson(Map<String, dynamic> json) => MessageVideo(
        video: Video.fromJson(json['video']),
        caption: FormattedText.fromJson(json['caption']),
        hasSpoiler: json['has_spoiler'],
        isSecret: json['is_secret'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "caption": caption.toJson(),
      "has_spoiler": hasSpoiler,
      "is_secret": isSecret,
    };
  }

  @override
  MessageVideo copyWith({
    Video? video,
    FormattedText? caption,
    bool? hasSpoiler,
    bool? isSecret,
  }) =>
      MessageVideo(
        video: video ?? this.video,
        caption: caption ?? this.caption,
        hasSpoiler: hasSpoiler ?? this.hasSpoiler,
        isSecret: isSecret ?? this.isSecret,
      );

  static const CONSTRUCTOR = 'messageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredVideo extends MessageContent {
  /// A self-destructed video message
  const MessageExpiredVideo();

  /// Parse from a json
  factory MessageExpiredVideo.fromJson(Map<String, dynamic> json) =>
      const MessageExpiredVideo();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageExpiredVideo copyWith() => const MessageExpiredVideo();

  static const CONSTRUCTOR = 'messageExpiredVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoNote extends MessageContent {
  /// A video note message
  const MessageVideoNote({
    required this.videoNote,
    required this.isViewed,
    required this.isSecret,
  });

  /// [videoNote] The video note description
  final VideoNote videoNote;

  /// [isViewed] True, if at least one of the recipients has viewed the video note
  final bool isViewed;

  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  final bool isSecret;

  /// Parse from a json
  factory MessageVideoNote.fromJson(Map<String, dynamic> json) =>
      MessageVideoNote(
        videoNote: VideoNote.fromJson(json['video_note']),
        isViewed: json['is_viewed'],
        isSecret: json['is_secret'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote.toJson(),
      "is_viewed": isViewed,
      "is_secret": isSecret,
    };
  }

  @override
  MessageVideoNote copyWith({
    VideoNote? videoNote,
    bool? isViewed,
    bool? isSecret,
  }) =>
      MessageVideoNote(
        videoNote: videoNote ?? this.videoNote,
        isViewed: isViewed ?? this.isViewed,
        isSecret: isSecret ?? this.isSecret,
      );

  static const CONSTRUCTOR = 'messageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceNote extends MessageContent {
  /// A voice note message
  const MessageVoiceNote({
    required this.voiceNote,
    required this.caption,
    required this.isListened,
  });

  /// [voiceNote] The voice note description
  final VoiceNote voiceNote;

  /// [caption] Voice note caption
  final FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the voice note
  final bool isListened;

  /// Parse from a json
  factory MessageVoiceNote.fromJson(Map<String, dynamic> json) =>
      MessageVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note']),
        caption: FormattedText.fromJson(json['caption']),
        isListened: json['is_listened'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote.toJson(),
      "caption": caption.toJson(),
      "is_listened": isListened,
    };
  }

  @override
  MessageVoiceNote copyWith({
    VoiceNote? voiceNote,
    FormattedText? caption,
    bool? isListened,
  }) =>
      MessageVoiceNote(
        voiceNote: voiceNote ?? this.voiceNote,
        caption: caption ?? this.caption,
        isListened: isListened ?? this.isListened,
      );

  static const CONSTRUCTOR = 'messageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageLocation extends MessageContent {
  /// A message with a location
  const MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [location] The location description
  final Location location;

  /// [livePeriod] Time relative to the message send date, for which the location can be updated, in seconds
  final int livePeriod;

  /// [expiresIn] Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  final int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  final int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only to the message sender
  final int proximityAlertRadius;

  /// Parse from a json
  factory MessageLocation.fromJson(Map<String, dynamic> json) =>
      MessageLocation(
        location: Location.fromJson(json['location']),
        livePeriod: json['live_period'],
        expiresIn: json['expires_in'],
        heading: json['heading'],
        proximityAlertRadius: json['proximity_alert_radius'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "location": location.toJson(),
      "live_period": livePeriod,
      "expires_in": expiresIn,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
    };
  }

  @override
  MessageLocation copyWith({
    Location? location,
    int? livePeriod,
    int? expiresIn,
    int? heading,
    int? proximityAlertRadius,
  }) =>
      MessageLocation(
        location: location ?? this.location,
        livePeriod: livePeriod ?? this.livePeriod,
        expiresIn: expiresIn ?? this.expiresIn,
        heading: heading ?? this.heading,
        proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
      );

  static const CONSTRUCTOR = 'messageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVenue extends MessageContent {
  /// A message with information about a venue
  const MessageVenue({
    required this.venue,
  });

  /// [venue] The venue description
  final Venue venue;

  /// Parse from a json
  factory MessageVenue.fromJson(Map<String, dynamic> json) => MessageVenue(
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
  MessageVenue copyWith({
    Venue? venue,
  }) =>
      MessageVenue(
        venue: venue ?? this.venue,
      );

  static const CONSTRUCTOR = 'messageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContact extends MessageContent {
  /// A message with a user contact
  const MessageContact({
    required this.contact,
  });

  /// [contact] The contact description
  final Contact contact;

  /// Parse from a json
  factory MessageContact.fromJson(Map<String, dynamic> json) => MessageContact(
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
  MessageContact copyWith({
    Contact? contact,
  }) =>
      MessageContact(
        contact: contact ?? this.contact,
      );

  static const CONSTRUCTOR = 'messageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAnimatedEmoji extends MessageContent {
  /// A message with an animated emoji
  const MessageAnimatedEmoji({
    required this.animatedEmoji,
    required this.emoji,
  });

  /// [animatedEmoji] The animated emoji
  final AnimatedEmoji animatedEmoji;

  /// [emoji] The corresponding emoji
  final String emoji;

  /// Parse from a json
  factory MessageAnimatedEmoji.fromJson(Map<String, dynamic> json) =>
      MessageAnimatedEmoji(
        animatedEmoji: AnimatedEmoji.fromJson(json['animated_emoji']),
        emoji: json['emoji'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animated_emoji": animatedEmoji.toJson(),
      "emoji": emoji,
    };
  }

  @override
  MessageAnimatedEmoji copyWith({
    AnimatedEmoji? animatedEmoji,
    String? emoji,
  }) =>
      MessageAnimatedEmoji(
        animatedEmoji: animatedEmoji ?? this.animatedEmoji,
        emoji: emoji ?? this.emoji,
      );

  static const CONSTRUCTOR = 'messageAnimatedEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDice extends MessageContent {
  /// A dice message. The dice value is randomly generated by the server
  const MessageDice({
    this.initialState,
    this.finalState,
    required this.emoji,
    required this.value,
    required this.successAnimationFrameNumber,
  });

  /// [initialState] The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final DiceStickers? initialState;

  /// [finalState] The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final DiceStickers? finalState;

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [value] The dice value. If the value is 0, the dice don't have final state yet
  final int value;

  /// [successAnimationFrameNumber] Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  final int successAnimationFrameNumber;

  /// Parse from a json
  factory MessageDice.fromJson(Map<String, dynamic> json) => MessageDice(
        initialState: json['initial_state'] == null
            ? null
            : DiceStickers.fromJson(json['initial_state']),
        finalState: json['final_state'] == null
            ? null
            : DiceStickers.fromJson(json['final_state']),
        emoji: json['emoji'],
        value: json['value'],
        successAnimationFrameNumber: json['success_animation_frame_number'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "initial_state": initialState?.toJson(),
      "final_state": finalState?.toJson(),
      "emoji": emoji,
      "value": value,
      "success_animation_frame_number": successAnimationFrameNumber,
    };
  }

  @override
  MessageDice copyWith({
    DiceStickers? initialState,
    DiceStickers? finalState,
    String? emoji,
    int? value,
    int? successAnimationFrameNumber,
  }) =>
      MessageDice(
        initialState: initialState ?? this.initialState,
        finalState: finalState ?? this.finalState,
        emoji: emoji ?? this.emoji,
        value: value ?? this.value,
        successAnimationFrameNumber:
            successAnimationFrameNumber ?? this.successAnimationFrameNumber,
      );

  static const CONSTRUCTOR = 'messageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGame extends MessageContent {
  /// A message with a game
  const MessageGame({
    required this.game,
  });

  /// [game] The game description
  final Game game;

  /// Parse from a json
  factory MessageGame.fromJson(Map<String, dynamic> json) => MessageGame(
        game: Game.fromJson(json['game']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "game": game.toJson(),
    };
  }

  @override
  MessageGame copyWith({
    Game? game,
  }) =>
      MessageGame(
        game: game ?? this.game,
      );

  static const CONSTRUCTOR = 'messageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePoll extends MessageContent {
  /// A message with a poll
  const MessagePoll({
    required this.poll,
  });

  /// [poll] The poll description
  final Poll poll;

  /// Parse from a json
  factory MessagePoll.fromJson(Map<String, dynamic> json) => MessagePoll(
        poll: Poll.fromJson(json['poll']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "poll": poll.toJson(),
    };
  }

  @override
  MessagePoll copyWith({
    Poll? poll,
  }) =>
      MessagePoll(
        poll: poll ?? this.poll,
      );

  static const CONSTRUCTOR = 'messagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageStory extends MessageContent {
  /// A message with a forwarded story
  const MessageStory({
    required this.storySenderChatId,
    required this.storyId,
    required this.viaMention,
  });

  /// [storySenderChatId] Identifier of the chat that posted the story
  final int storySenderChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [viaMention] True, if the story was automatically forwarded because of a mention of the user
  final bool viaMention;

  /// Parse from a json
  factory MessageStory.fromJson(Map<String, dynamic> json) => MessageStory(
        storySenderChatId: json['story_sender_chat_id'],
        storyId: json['story_id'],
        viaMention: json['via_mention'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "via_mention": viaMention,
    };
  }

  @override
  MessageStory copyWith({
    int? storySenderChatId,
    int? storyId,
    bool? viaMention,
  }) =>
      MessageStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        viaMention: viaMention ?? this.viaMention,
      );

  static const CONSTRUCTOR = 'messageStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInvoice extends MessageContent {
  /// A message with an invoice from a bot. Use getInternalLink with internalLinkTypeBotStart to share the invoice
  const MessageInvoice({
    required this.title,
    required this.description,
    this.photo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
    this.extendedMedia,
  });

  /// [title] Product title
  final String title;

  /// [description] Product description
  final FormattedText description;

  /// [photo] Product photo; may be null
  final Photo? photo;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Product total price in the smallest units of the currency
  final int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter to be passed to getInternalLink
  final String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  final bool isTest;

  /// [needShippingAddress] True, if the shipping address must be specified
  final bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
  final int receiptMessageId;

  /// [extendedMedia] Extended media attached to the invoice; may be null
  final MessageExtendedMedia? extendedMedia;

  /// Parse from a json
  factory MessageInvoice.fromJson(Map<String, dynamic> json) => MessageInvoice(
        title: json['title'],
        description: FormattedText.fromJson(json['description']),
        photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
        currency: json['currency'],
        totalAmount: json['total_amount'],
        startParameter: json['start_parameter'],
        isTest: json['is_test'],
        needShippingAddress: json['need_shipping_address'],
        receiptMessageId: json['receipt_message_id'],
        extendedMedia: json['extended_media'] == null
            ? null
            : MessageExtendedMedia.fromJson(json['extended_media']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "currency": currency,
      "total_amount": totalAmount,
      "start_parameter": startParameter,
      "is_test": isTest,
      "need_shipping_address": needShippingAddress,
      "receipt_message_id": receiptMessageId,
      "extended_media": extendedMedia?.toJson(),
    };
  }

  @override
  MessageInvoice copyWith({
    String? title,
    FormattedText? description,
    Photo? photo,
    String? currency,
    int? totalAmount,
    String? startParameter,
    bool? isTest,
    bool? needShippingAddress,
    int? receiptMessageId,
    MessageExtendedMedia? extendedMedia,
  }) =>
      MessageInvoice(
        title: title ?? this.title,
        description: description ?? this.description,
        photo: photo ?? this.photo,
        currency: currency ?? this.currency,
        totalAmount: totalAmount ?? this.totalAmount,
        startParameter: startParameter ?? this.startParameter,
        isTest: isTest ?? this.isTest,
        needShippingAddress: needShippingAddress ?? this.needShippingAddress,
        receiptMessageId: receiptMessageId ?? this.receiptMessageId,
        extendedMedia: extendedMedia ?? this.extendedMedia,
      );

  static const CONSTRUCTOR = 'messageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCall extends MessageContent {
  /// A message with information about an ended call
  const MessageCall({
    required this.isVideo,
    required this.discardReason,
    required this.duration,
  });

  /// [isVideo] True, if the call was a video call
  final bool isVideo;

  /// [discardReason] Reason why the call was discarded
  final CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  final int duration;

  /// Parse from a json
  factory MessageCall.fromJson(Map<String, dynamic> json) => MessageCall(
        isVideo: json['is_video'],
        discardReason: CallDiscardReason.fromJson(json['discard_reason']),
        duration: json['duration'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_video": isVideo,
      "discard_reason": discardReason.toJson(),
      "duration": duration,
    };
  }

  @override
  MessageCall copyWith({
    bool? isVideo,
    CallDiscardReason? discardReason,
    int? duration,
  }) =>
      MessageCall(
        isVideo: isVideo ?? this.isVideo,
        discardReason: discardReason ?? this.discardReason,
        duration: duration ?? this.duration,
      );

  static const CONSTRUCTOR = 'messageCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoChatScheduled extends MessageContent {
  /// A new video chat was scheduled
  const MessageVideoChatScheduled({
    required this.groupCallId,
    required this.startDate,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  /// [startDate] Point in time (Unix timestamp) when the group call is supposed to be started by an administrator
  final int startDate;

  /// Parse from a json
  factory MessageVideoChatScheduled.fromJson(Map<String, dynamic> json) =>
      MessageVideoChatScheduled(
        groupCallId: json['group_call_id'],
        startDate: json['start_date'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "start_date": startDate,
    };
  }

  @override
  MessageVideoChatScheduled copyWith({
    int? groupCallId,
    int? startDate,
  }) =>
      MessageVideoChatScheduled(
        groupCallId: groupCallId ?? this.groupCallId,
        startDate: startDate ?? this.startDate,
      );

  static const CONSTRUCTOR = 'messageVideoChatScheduled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoChatStarted extends MessageContent {
  /// A newly created video chat
  const MessageVideoChatStarted({
    required this.groupCallId,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  /// Parse from a json
  factory MessageVideoChatStarted.fromJson(Map<String, dynamic> json) =>
      MessageVideoChatStarted(
        groupCallId: json['group_call_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
    };
  }

  @override
  MessageVideoChatStarted copyWith({
    int? groupCallId,
  }) =>
      MessageVideoChatStarted(
        groupCallId: groupCallId ?? this.groupCallId,
      );

  static const CONSTRUCTOR = 'messageVideoChatStarted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoChatEnded extends MessageContent {
  /// A message with information about an ended video chat
  const MessageVideoChatEnded({
    required this.duration,
  });

  /// [duration] Call duration, in seconds
  final int duration;

  /// Parse from a json
  factory MessageVideoChatEnded.fromJson(Map<String, dynamic> json) =>
      MessageVideoChatEnded(
        duration: json['duration'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "duration": duration,
    };
  }

  @override
  MessageVideoChatEnded copyWith({
    int? duration,
  }) =>
      MessageVideoChatEnded(
        duration: duration ?? this.duration,
      );

  static const CONSTRUCTOR = 'messageVideoChatEnded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInviteVideoChatParticipants extends MessageContent {
  /// A message with information about an invite to a video chat
  const MessageInviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received through the method getGroupCall
  final int groupCallId;

  /// [userIds] Invited user identifiers
  final List<int> userIds;

  /// Parse from a json
  factory MessageInviteVideoChatParticipants.fromJson(
          Map<String, dynamic> json) =>
      MessageInviteVideoChatParticipants(
        groupCallId: json['group_call_id'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }

  @override
  MessageInviteVideoChatParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) =>
      MessageInviteVideoChatParticipants(
        groupCallId: groupCallId ?? this.groupCallId,
        userIds: userIds ?? this.userIds,
      );

  static const CONSTRUCTOR = 'messageInviteVideoChatParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageBasicGroupChatCreate extends MessageContent {
  /// A newly created basic group
  const MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });

  /// [title] Title of the basic group
  final String title;

  /// [memberUserIds] User identifiers of members in the basic group
  final List<int> memberUserIds;

  /// Parse from a json
  factory MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) =>
      MessageBasicGroupChatCreate(
        title: json['title'],
        memberUserIds: List<int>.from(
            (json['member_user_ids'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
    };
  }

  @override
  MessageBasicGroupChatCreate copyWith({
    String? title,
    List<int>? memberUserIds,
  }) =>
      MessageBasicGroupChatCreate(
        title: title ?? this.title,
        memberUserIds: memberUserIds ?? this.memberUserIds,
      );

  static const CONSTRUCTOR = 'messageBasicGroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSupergroupChatCreate extends MessageContent {
  /// A newly created supergroup or channel
  const MessageSupergroupChatCreate({
    required this.title,
  });

  /// [title] Title of the supergroup or channel
  final String title;

  /// Parse from a json
  factory MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) =>
      MessageSupergroupChatCreate(
        title: json['title'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
    };
  }

  @override
  MessageSupergroupChatCreate copyWith({
    String? title,
  }) =>
      MessageSupergroupChatCreate(
        title: title ?? this.title,
      );

  static const CONSTRUCTOR = 'messageSupergroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangeTitle extends MessageContent {
  /// An updated chat title
  const MessageChatChangeTitle({
    required this.title,
  });

  /// [title] New chat title
  final String title;

  /// Parse from a json
  factory MessageChatChangeTitle.fromJson(Map<String, dynamic> json) =>
      MessageChatChangeTitle(
        title: json['title'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
    };
  }

  @override
  MessageChatChangeTitle copyWith({
    String? title,
  }) =>
      MessageChatChangeTitle(
        title: title ?? this.title,
      );

  static const CONSTRUCTOR = 'messageChatChangeTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangePhoto extends MessageContent {
  /// An updated chat photo
  const MessageChatChangePhoto({
    required this.photo,
  });

  /// [photo] New chat photo
  final ChatPhoto photo;

  /// Parse from a json
  factory MessageChatChangePhoto.fromJson(Map<String, dynamic> json) =>
      MessageChatChangePhoto(
        photo: ChatPhoto.fromJson(json['photo']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }

  @override
  MessageChatChangePhoto copyWith({
    ChatPhoto? photo,
  }) =>
      MessageChatChangePhoto(
        photo: photo ?? this.photo,
      );

  static const CONSTRUCTOR = 'messageChatChangePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeletePhoto extends MessageContent {
  /// A deleted chat photo
  const MessageChatDeletePhoto();

  /// Parse from a json
  factory MessageChatDeletePhoto.fromJson(Map<String, dynamic> json) =>
      const MessageChatDeletePhoto();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageChatDeletePhoto copyWith() => const MessageChatDeletePhoto();

  static const CONSTRUCTOR = 'messageChatDeletePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatAddMembers extends MessageContent {
  /// New chat members were added
  const MessageChatAddMembers({
    required this.memberUserIds,
  });

  /// [memberUserIds] User identifiers of the new members
  final List<int> memberUserIds;

  /// Parse from a json
  factory MessageChatAddMembers.fromJson(Map<String, dynamic> json) =>
      MessageChatAddMembers(
        memberUserIds: List<int>.from(
            (json['member_user_ids'] ?? []).map((item) => item).toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
    };
  }

  @override
  MessageChatAddMembers copyWith({
    List<int>? memberUserIds,
  }) =>
      MessageChatAddMembers(
        memberUserIds: memberUserIds ?? this.memberUserIds,
      );

  static const CONSTRUCTOR = 'messageChatAddMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatJoinByLink extends MessageContent {
  /// A new member joined the chat via an invite link
  const MessageChatJoinByLink();

  /// Parse from a json
  factory MessageChatJoinByLink.fromJson(Map<String, dynamic> json) =>
      const MessageChatJoinByLink();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageChatJoinByLink copyWith() => const MessageChatJoinByLink();

  static const CONSTRUCTOR = 'messageChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatJoinByRequest extends MessageContent {
  /// A new member was accepted to the chat by an administrator
  const MessageChatJoinByRequest();

  /// Parse from a json
  factory MessageChatJoinByRequest.fromJson(Map<String, dynamic> json) =>
      const MessageChatJoinByRequest();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageChatJoinByRequest copyWith() => const MessageChatJoinByRequest();

  static const CONSTRUCTOR = 'messageChatJoinByRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeleteMember extends MessageContent {
  /// A chat member was deleted
  const MessageChatDeleteMember({
    required this.userId,
  });

  /// [userId] User identifier of the deleted chat member
  final int userId;

  /// Parse from a json
  factory MessageChatDeleteMember.fromJson(Map<String, dynamic> json) =>
      MessageChatDeleteMember(
        userId: json['user_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }

  @override
  MessageChatDeleteMember copyWith({
    int? userId,
  }) =>
      MessageChatDeleteMember(
        userId: userId ?? this.userId,
      );

  static const CONSTRUCTOR = 'messageChatDeleteMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeTo extends MessageContent {
  /// A basic group was upgraded to a supergroup and was deactivated as the result
  const MessageChatUpgradeTo({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup to which the basic group was upgraded
  final int supergroupId;

  /// Parse from a json
  factory MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) =>
      MessageChatUpgradeTo(
        supergroupId: json['supergroup_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
    };
  }

  @override
  MessageChatUpgradeTo copyWith({
    int? supergroupId,
  }) =>
      MessageChatUpgradeTo(
        supergroupId: supergroupId ?? this.supergroupId,
      );

  static const CONSTRUCTOR = 'messageChatUpgradeTo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeFrom extends MessageContent {
  /// A supergroup has been created from a basic group
  const MessageChatUpgradeFrom({
    required this.title,
    required this.basicGroupId,
  });

  /// [title] Title of the newly created supergroup
  final String title;

  /// [basicGroupId] The identifier of the original basic group
  final int basicGroupId;

  /// Parse from a json
  factory MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) =>
      MessageChatUpgradeFrom(
        title: json['title'],
        basicGroupId: json['basic_group_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "basic_group_id": basicGroupId,
    };
  }

  @override
  MessageChatUpgradeFrom copyWith({
    String? title,
    int? basicGroupId,
  }) =>
      MessageChatUpgradeFrom(
        title: title ?? this.title,
        basicGroupId: basicGroupId ?? this.basicGroupId,
      );

  static const CONSTRUCTOR = 'messageChatUpgradeFrom';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePinMessage extends MessageContent {
  /// A message has been pinned
  const MessagePinMessage({
    required this.messageId,
  });

  /// [messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  final int messageId;

  /// Parse from a json
  factory MessagePinMessage.fromJson(Map<String, dynamic> json) =>
      MessagePinMessage(
        messageId: json['message_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
    };
  }

  @override
  MessagePinMessage copyWith({
    int? messageId,
  }) =>
      MessagePinMessage(
        messageId: messageId ?? this.messageId,
      );

  static const CONSTRUCTOR = 'messagePinMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageScreenshotTaken extends MessageContent {
  /// A screenshot of a message in the chat has been taken
  const MessageScreenshotTaken();

  /// Parse from a json
  factory MessageScreenshotTaken.fromJson(Map<String, dynamic> json) =>
      const MessageScreenshotTaken();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageScreenshotTaken copyWith() => const MessageScreenshotTaken();

  static const CONSTRUCTOR = 'messageScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatSetBackground extends MessageContent {
  /// A new background was set in the chat
  const MessageChatSetBackground({
    required this.oldBackgroundMessageId,
    required this.background,
  });

  /// [oldBackgroundMessageId] Identifier of the message with a previously set same background; 0 if none. Can be an identifier of a deleted message
  final int oldBackgroundMessageId;

  /// [background] The new background
  final ChatBackground background;

  /// Parse from a json
  factory MessageChatSetBackground.fromJson(Map<String, dynamic> json) =>
      MessageChatSetBackground(
        oldBackgroundMessageId: json['old_background_message_id'] ?? 0,
        background: ChatBackground.fromJson(json['background']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "old_background_message_id": oldBackgroundMessageId,
      "background": background.toJson(),
    };
  }

  @override
  MessageChatSetBackground copyWith({
    int? oldBackgroundMessageId,
    ChatBackground? background,
  }) =>
      MessageChatSetBackground(
        oldBackgroundMessageId:
            oldBackgroundMessageId ?? this.oldBackgroundMessageId,
        background: background ?? this.background,
      );

  static const CONSTRUCTOR = 'messageChatSetBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatSetTheme extends MessageContent {
  /// A theme in the chat has been changed
  const MessageChatSetTheme({
    required this.themeName,
  });

  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise, chat theme was reset to the default one
  final String themeName;

  /// Parse from a json
  factory MessageChatSetTheme.fromJson(Map<String, dynamic> json) =>
      MessageChatSetTheme(
        themeName: json['theme_name'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "theme_name": themeName,
    };
  }

  @override
  MessageChatSetTheme copyWith({
    String? themeName,
  }) =>
      MessageChatSetTheme(
        themeName: themeName ?? this.themeName,
      );

  static const CONSTRUCTOR = 'messageChatSetTheme';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatSetMessageAutoDeleteTime extends MessageContent {
  /// The auto-delete or self-destruct timer for messages in the chat has been changed
  const MessageChatSetMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
    required this.fromUserId,
  });

  /// [messageAutoDeleteTime] New value auto-delete or self-destruct time, in seconds; 0 if disabled
  final int messageAutoDeleteTime;

  /// [fromUserId] If not 0, a user identifier, which default setting was automatically applied
  final int fromUserId;

  /// Parse from a json
  factory MessageChatSetMessageAutoDeleteTime.fromJson(
          Map<String, dynamic> json) =>
      MessageChatSetMessageAutoDeleteTime(
        messageAutoDeleteTime: json['message_auto_delete_time'],
        fromUserId: json['from_user_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_auto_delete_time": messageAutoDeleteTime,
      "from_user_id": fromUserId,
    };
  }

  @override
  MessageChatSetMessageAutoDeleteTime copyWith({
    int? messageAutoDeleteTime,
    int? fromUserId,
  }) =>
      MessageChatSetMessageAutoDeleteTime(
        messageAutoDeleteTime:
            messageAutoDeleteTime ?? this.messageAutoDeleteTime,
        fromUserId: fromUserId ?? this.fromUserId,
      );

  static const CONSTRUCTOR = 'messageChatSetMessageAutoDeleteTime';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForumTopicCreated extends MessageContent {
  /// A forum topic has been created
  const MessageForumTopicCreated({
    required this.name,
    required this.icon,
  });

  /// [name] Name of the topic
  final String name;

  /// [icon] Icon of the topic
  final ForumTopicIcon icon;

  /// Parse from a json
  factory MessageForumTopicCreated.fromJson(Map<String, dynamic> json) =>
      MessageForumTopicCreated(
        name: json['name'],
        icon: ForumTopicIcon.fromJson(json['icon']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "icon": icon.toJson(),
    };
  }

  @override
  MessageForumTopicCreated copyWith({
    String? name,
    ForumTopicIcon? icon,
  }) =>
      MessageForumTopicCreated(
        name: name ?? this.name,
        icon: icon ?? this.icon,
      );

  static const CONSTRUCTOR = 'messageForumTopicCreated';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForumTopicEdited extends MessageContent {
  /// A forum topic has been edited
  const MessageForumTopicEdited({
    required this.name,
    required this.editIconCustomEmojiId,
    required this.iconCustomEmojiId,
  });

  /// [name] If non-empty, the new name of the topic
  final String name;

  /// [editIconCustomEmojiId] True, if icon's custom_emoji_id is changed
  final bool editIconCustomEmojiId;

  /// [iconCustomEmojiId] New unique identifier of the custom emoji shown on the topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is false
  final int iconCustomEmojiId;

  /// Parse from a json
  factory MessageForumTopicEdited.fromJson(Map<String, dynamic> json) =>
      MessageForumTopicEdited(
        name: json['name'],
        editIconCustomEmojiId: json['edit_icon_custom_emoji_id'],
        iconCustomEmojiId:
            int.tryParse(json['icon_custom_emoji_id'] ?? "") ?? 0,
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "edit_icon_custom_emoji_id": editIconCustomEmojiId,
      "icon_custom_emoji_id": iconCustomEmojiId,
    };
  }

  @override
  MessageForumTopicEdited copyWith({
    String? name,
    bool? editIconCustomEmojiId,
    int? iconCustomEmojiId,
  }) =>
      MessageForumTopicEdited(
        name: name ?? this.name,
        editIconCustomEmojiId:
            editIconCustomEmojiId ?? this.editIconCustomEmojiId,
        iconCustomEmojiId: iconCustomEmojiId ?? this.iconCustomEmojiId,
      );

  static const CONSTRUCTOR = 'messageForumTopicEdited';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForumTopicIsClosedToggled extends MessageContent {
  /// A forum topic has been closed or opened
  const MessageForumTopicIsClosedToggled({
    required this.isClosed,
  });

  /// [isClosed] True, if the topic was closed; otherwise, the topic was reopened
  final bool isClosed;

  /// Parse from a json
  factory MessageForumTopicIsClosedToggled.fromJson(
          Map<String, dynamic> json) =>
      MessageForumTopicIsClosedToggled(
        isClosed: json['is_closed'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_closed": isClosed,
    };
  }

  @override
  MessageForumTopicIsClosedToggled copyWith({
    bool? isClosed,
  }) =>
      MessageForumTopicIsClosedToggled(
        isClosed: isClosed ?? this.isClosed,
      );

  static const CONSTRUCTOR = 'messageForumTopicIsClosedToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageForumTopicIsHiddenToggled extends MessageContent {
  /// A General forum topic has been hidden or unhidden
  const MessageForumTopicIsHiddenToggled({
    required this.isHidden,
  });

  /// [isHidden] True, if the topic was hidden; otherwise, the topic was unhidden
  final bool isHidden;

  /// Parse from a json
  factory MessageForumTopicIsHiddenToggled.fromJson(
          Map<String, dynamic> json) =>
      MessageForumTopicIsHiddenToggled(
        isHidden: json['is_hidden'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_hidden": isHidden,
    };
  }

  @override
  MessageForumTopicIsHiddenToggled copyWith({
    bool? isHidden,
  }) =>
      MessageForumTopicIsHiddenToggled(
        isHidden: isHidden ?? this.isHidden,
      );

  static const CONSTRUCTOR = 'messageForumTopicIsHiddenToggled';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSuggestProfilePhoto extends MessageContent {
  /// A profile photo was suggested to a user in a private chat
  const MessageSuggestProfilePhoto({
    required this.photo,
  });

  /// [photo] The suggested chat photo. Use the method setProfilePhoto with inputChatPhotoPrevious to apply the photo
  final ChatPhoto photo;

  /// Parse from a json
  factory MessageSuggestProfilePhoto.fromJson(Map<String, dynamic> json) =>
      MessageSuggestProfilePhoto(
        photo: ChatPhoto.fromJson(json['photo']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
    };
  }

  @override
  MessageSuggestProfilePhoto copyWith({
    ChatPhoto? photo,
  }) =>
      MessageSuggestProfilePhoto(
        photo: photo ?? this.photo,
      );

  static const CONSTRUCTOR = 'messageSuggestProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCustomServiceAction extends MessageContent {
  /// A non-standard action has happened in the chat
  const MessageCustomServiceAction({
    required this.text,
  });

  /// [text] Message text to be shown in the chat
  final String text;

  /// Parse from a json
  factory MessageCustomServiceAction.fromJson(Map<String, dynamic> json) =>
      MessageCustomServiceAction(
        text: json['text'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
    };
  }

  @override
  MessageCustomServiceAction copyWith({
    String? text,
  }) =>
      MessageCustomServiceAction(
        text: text ?? this.text,
      );

  static const CONSTRUCTOR = 'messageCustomServiceAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGameScore extends MessageContent {
  /// A new high score was achieved in a game
  const MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });

  /// [gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message
  final int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game
  final int gameId;

  /// [score] New score
  final int score;

  /// Parse from a json
  factory MessageGameScore.fromJson(Map<String, dynamic> json) =>
      MessageGameScore(
        gameMessageId: json['game_message_id'],
        gameId: int.parse(json['game_id']),
        score: json['score'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "game_message_id": gameMessageId,
      "game_id": gameId,
      "score": score,
    };
  }

  @override
  MessageGameScore copyWith({
    int? gameMessageId,
    int? gameId,
    int? score,
  }) =>
      MessageGameScore(
        gameMessageId: gameMessageId ?? this.gameMessageId,
        gameId: gameId ?? this.gameId,
        score: score ?? this.score,
      );

  static const CONSTRUCTOR = 'messageGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessful extends MessageContent {
  /// A payment has been completed
  const MessagePaymentSuccessful({
    required this.invoiceChatId,
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoiceName,
  });

  /// [invoiceChatId] Identifier of the chat, containing the corresponding invoice message
  final int invoiceChatId;

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoiceName] Name of the invoice; may be empty if unknown
  final String invoiceName;

  /// Parse from a json
  factory MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) =>
      MessagePaymentSuccessful(
        invoiceChatId: json['invoice_chat_id'],
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        isRecurring: json['is_recurring'],
        isFirstRecurring: json['is_first_recurring'],
        invoiceName: json['invoice_name'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "invoice_chat_id": invoiceChatId,
      "invoice_message_id": invoiceMessageId,
      "currency": currency,
      "total_amount": totalAmount,
      "is_recurring": isRecurring,
      "is_first_recurring": isFirstRecurring,
      "invoice_name": invoiceName,
    };
  }

  @override
  MessagePaymentSuccessful copyWith({
    int? invoiceChatId,
    int? invoiceMessageId,
    String? currency,
    int? totalAmount,
    bool? isRecurring,
    bool? isFirstRecurring,
    String? invoiceName,
  }) =>
      MessagePaymentSuccessful(
        invoiceChatId: invoiceChatId ?? this.invoiceChatId,
        invoiceMessageId: invoiceMessageId ?? this.invoiceMessageId,
        currency: currency ?? this.currency,
        totalAmount: totalAmount ?? this.totalAmount,
        isRecurring: isRecurring ?? this.isRecurring,
        isFirstRecurring: isFirstRecurring ?? this.isFirstRecurring,
        invoiceName: invoiceName ?? this.invoiceName,
      );

  static const CONSTRUCTOR = 'messagePaymentSuccessful';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessfulBot extends MessageContent {
  /// A payment has been completed; for bots only
  const MessagePaymentSuccessfulBot({
    required this.currency,
    required this.totalAmount,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// [currency] Currency for price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the currency
  final int totalAmount;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;

  /// Parse from a json
  factory MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) =>
      MessagePaymentSuccessfulBot(
        currency: json['currency'],
        totalAmount: json['total_amount'],
        isRecurring: json['is_recurring'],
        isFirstRecurring: json['is_first_recurring'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: json['order_info'] == null
            ? null
            : OrderInfo.fromJson(json['order_info']),
        telegramPaymentChargeId: json['telegram_payment_charge_id'],
        providerPaymentChargeId: json['provider_payment_charge_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "currency": currency,
      "total_amount": totalAmount,
      "is_recurring": isRecurring,
      "is_first_recurring": isFirstRecurring,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo?.toJson(),
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "provider_payment_charge_id": providerPaymentChargeId,
    };
  }

  @override
  MessagePaymentSuccessfulBot copyWith({
    String? currency,
    int? totalAmount,
    bool? isRecurring,
    bool? isFirstRecurring,
    String? invoicePayload,
    String? shippingOptionId,
    OrderInfo? orderInfo,
    String? telegramPaymentChargeId,
    String? providerPaymentChargeId,
  }) =>
      MessagePaymentSuccessfulBot(
        currency: currency ?? this.currency,
        totalAmount: totalAmount ?? this.totalAmount,
        isRecurring: isRecurring ?? this.isRecurring,
        isFirstRecurring: isFirstRecurring ?? this.isFirstRecurring,
        invoicePayload: invoicePayload ?? this.invoicePayload,
        shippingOptionId: shippingOptionId ?? this.shippingOptionId,
        orderInfo: orderInfo ?? this.orderInfo,
        telegramPaymentChargeId:
            telegramPaymentChargeId ?? this.telegramPaymentChargeId,
        providerPaymentChargeId:
            providerPaymentChargeId ?? this.providerPaymentChargeId,
      );

  static const CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGiftedPremium extends MessageContent {
  /// Telegram Premium was gifted to the user
  const MessageGiftedPremium({
    required this.gifterUserId,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user that gifted Telegram Premium; 0 if the gift was anonymous
  final int gifterUserId;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the cryptocurrency
  final int cryptocurrencyAmount;

  /// [monthCount] Number of month the Telegram Premium subscription will be active
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  /// Parse from a json
  factory MessageGiftedPremium.fromJson(Map<String, dynamic> json) =>
      MessageGiftedPremium(
        gifterUserId: json['gifter_user_id'],
        currency: json['currency'],
        amount: json['amount'],
        cryptocurrency: json['cryptocurrency'],
        cryptocurrencyAmount: int.parse(json['cryptocurrency_amount']),
        monthCount: json['month_count'],
        sticker:
            json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "gifter_user_id": gifterUserId,
      "currency": currency,
      "amount": amount,
      "cryptocurrency": cryptocurrency,
      "cryptocurrency_amount": cryptocurrencyAmount,
      "month_count": monthCount,
      "sticker": sticker?.toJson(),
    };
  }

  @override
  MessageGiftedPremium copyWith({
    int? gifterUserId,
    String? currency,
    int? amount,
    String? cryptocurrency,
    int? cryptocurrencyAmount,
    int? monthCount,
    Sticker? sticker,
  }) =>
      MessageGiftedPremium(
        gifterUserId: gifterUserId ?? this.gifterUserId,
        currency: currency ?? this.currency,
        amount: amount ?? this.amount,
        cryptocurrency: cryptocurrency ?? this.cryptocurrency,
        cryptocurrencyAmount: cryptocurrencyAmount ?? this.cryptocurrencyAmount,
        monthCount: monthCount ?? this.monthCount,
        sticker: sticker ?? this.sticker,
      );

  static const CONSTRUCTOR = 'messageGiftedPremium';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContactRegistered extends MessageContent {
  /// A contact has registered with Telegram
  const MessageContactRegistered();

  /// Parse from a json
  factory MessageContactRegistered.fromJson(Map<String, dynamic> json) =>
      const MessageContactRegistered();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageContactRegistered copyWith() => const MessageContactRegistered();

  static const CONSTRUCTOR = 'messageContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageUserShared extends MessageContent {
  /// The current user shared a user, which was requested by the bot
  const MessageUserShared({
    required this.userId,
    required this.buttonId,
  });

  /// [userId] Identifier of the shared user
  final int userId;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  /// Parse from a json
  factory MessageUserShared.fromJson(Map<String, dynamic> json) =>
      MessageUserShared(
        userId: json['user_id'],
        buttonId: json['button_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "button_id": buttonId,
    };
  }

  @override
  MessageUserShared copyWith({
    int? userId,
    int? buttonId,
  }) =>
      MessageUserShared(
        userId: userId ?? this.userId,
        buttonId: buttonId ?? this.buttonId,
      );

  static const CONSTRUCTOR = 'messageUserShared';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatShared extends MessageContent {
  /// The current user shared a chat, which was requested by the bot
  const MessageChatShared({
    required this.chatId,
    required this.buttonId,
  });

  /// [chatId] Identifier of the shared chat
  final int chatId;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  /// Parse from a json
  factory MessageChatShared.fromJson(Map<String, dynamic> json) =>
      MessageChatShared(
        chatId: json['chat_id'],
        buttonId: json['button_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "button_id": buttonId,
    };
  }

  @override
  MessageChatShared copyWith({
    int? chatId,
    int? buttonId,
  }) =>
      MessageChatShared(
        chatId: chatId ?? this.chatId,
        buttonId: buttonId ?? this.buttonId,
      );

  static const CONSTRUCTOR = 'messageChatShared';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageWebsiteConnected extends MessageContent {
  /// The current user has connected a website by logging in using Telegram Login Widget on it
  const MessageWebsiteConnected({
    required this.domainName,
  });

  /// [domainName] Domain name of the connected website
  final String domainName;

  /// Parse from a json
  factory MessageWebsiteConnected.fromJson(Map<String, dynamic> json) =>
      MessageWebsiteConnected(
        domainName: json['domain_name'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "domain_name": domainName,
    };
  }

  @override
  MessageWebsiteConnected copyWith({
    String? domainName,
  }) =>
      MessageWebsiteConnected(
        domainName: domainName ?? this.domainName,
      );

  static const CONSTRUCTOR = 'messageWebsiteConnected';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageBotWriteAccessAllowed extends MessageContent {
  /// The user allowed the bot to send messages
  const MessageBotWriteAccessAllowed({
    this.webApp,
  });

  /// [webApp] Information about the Web App, which requested the access; may be null if none or the Web App was opened from the attachment menu
  final WebApp? webApp;

  /// Parse from a json
  factory MessageBotWriteAccessAllowed.fromJson(Map<String, dynamic> json) =>
      MessageBotWriteAccessAllowed(
        webApp:
            json['web_app'] == null ? null : WebApp.fromJson(json['web_app']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "web_app": webApp?.toJson(),
    };
  }

  @override
  MessageBotWriteAccessAllowed copyWith({
    WebApp? webApp,
  }) =>
      MessageBotWriteAccessAllowed(
        webApp: webApp ?? this.webApp,
      );

  static const CONSTRUCTOR = 'messageBotWriteAccessAllowed';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageWebAppDataSent extends MessageContent {
  /// Data from a Web App has been sent to a bot
  const MessageWebAppDataSent({
    required this.buttonText,
  });

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the Web App
  final String buttonText;

  /// Parse from a json
  factory MessageWebAppDataSent.fromJson(Map<String, dynamic> json) =>
      MessageWebAppDataSent(
        buttonText: json['button_text'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "button_text": buttonText,
    };
  }

  @override
  MessageWebAppDataSent copyWith({
    String? buttonText,
  }) =>
      MessageWebAppDataSent(
        buttonText: buttonText ?? this.buttonText,
      );

  static const CONSTRUCTOR = 'messageWebAppDataSent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageWebAppDataReceived extends MessageContent {
  /// Data from a Web App has been received; for bots only
  const MessageWebAppDataReceived({
    required this.buttonText,
    required this.data,
  });

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the Web App
  final String buttonText;

  /// [data] The data
  final String data;

  /// Parse from a json
  factory MessageWebAppDataReceived.fromJson(Map<String, dynamic> json) =>
      MessageWebAppDataReceived(
        buttonText: json['button_text'],
        data: json['data'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "button_text": buttonText,
      "data": data,
    };
  }

  @override
  MessageWebAppDataReceived copyWith({
    String? buttonText,
    String? data,
  }) =>
      MessageWebAppDataReceived(
        buttonText: buttonText ?? this.buttonText,
        data: data ?? this.data,
      );

  static const CONSTRUCTOR = 'messageWebAppDataReceived';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataSent extends MessageContent {
  /// Telegram Passport data has been sent to a bot
  const MessagePassportDataSent({
    required this.types,
  });

  /// [types] List of Telegram Passport element types sent
  final List<PassportElementType> types;

  /// Parse from a json
  factory MessagePassportDataSent.fromJson(Map<String, dynamic> json) =>
      MessagePassportDataSent(
        types: List<PassportElementType>.from((json['types'] ?? [])
            .map((item) => PassportElementType.fromJson(item))
            .toList()),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "types": types.map((i) => i.toJson()).toList(),
    };
  }

  @override
  MessagePassportDataSent copyWith({
    List<PassportElementType>? types,
  }) =>
      MessagePassportDataSent(
        types: types ?? this.types,
      );

  static const CONSTRUCTOR = 'messagePassportDataSent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataReceived extends MessageContent {
  /// Telegram Passport data has been received; for bots only
  const MessagePassportDataReceived({
    required this.elements,
    required this.credentials,
  });

  /// [elements] List of received Telegram Passport elements
  final List<EncryptedPassportElement> elements;

  /// [credentials] Encrypted data credentials
  final EncryptedCredentials credentials;

  /// Parse from a json
  factory MessagePassportDataReceived.fromJson(Map<String, dynamic> json) =>
      MessagePassportDataReceived(
        elements: List<EncryptedPassportElement>.from((json['elements'] ?? [])
            .map((item) => EncryptedPassportElement.fromJson(item))
            .toList()),
        credentials: EncryptedCredentials.fromJson(json['credentials']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "elements": elements.map((i) => i.toJson()).toList(),
      "credentials": credentials.toJson(),
    };
  }

  @override
  MessagePassportDataReceived copyWith({
    List<EncryptedPassportElement>? elements,
    EncryptedCredentials? credentials,
  }) =>
      MessagePassportDataReceived(
        elements: elements ?? this.elements,
        credentials: credentials ?? this.credentials,
      );

  static const CONSTRUCTOR = 'messagePassportDataReceived';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageProximityAlertTriggered extends MessageContent {
  /// A user in the chat came within proximity alert range
  const MessageProximityAlertTriggered({
    required this.travelerId,
    required this.watcherId,
    required this.distance,
  });

  /// [travelerId] The identifier of a user or chat that triggered the proximity alert
  final MessageSender travelerId;

  /// [watcherId] The identifier of a user or chat that subscribed for the proximity alert
  final MessageSender watcherId;

  /// [distance] The distance between the users
  final int distance;

  /// Parse from a json
  factory MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) =>
      MessageProximityAlertTriggered(
        travelerId: MessageSender.fromJson(json['traveler_id']),
        watcherId: MessageSender.fromJson(json['watcher_id']),
        distance: json['distance'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "traveler_id": travelerId.toJson(),
      "watcher_id": watcherId.toJson(),
      "distance": distance,
    };
  }

  @override
  MessageProximityAlertTriggered copyWith({
    MessageSender? travelerId,
    MessageSender? watcherId,
    int? distance,
  }) =>
      MessageProximityAlertTriggered(
        travelerId: travelerId ?? this.travelerId,
        watcherId: watcherId ?? this.watcherId,
        distance: distance ?? this.distance,
      );

  static const CONSTRUCTOR = 'messageProximityAlertTriggered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageUnsupported extends MessageContent {
  /// A message content that is not supported in the current TDLib version
  const MessageUnsupported();

  /// Parse from a json
  factory MessageUnsupported.fromJson(Map<String, dynamic> json) =>
      const MessageUnsupported();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  MessageUnsupported copyWith() => const MessageUnsupported();

  static const CONSTRUCTOR = 'messageUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;
}
