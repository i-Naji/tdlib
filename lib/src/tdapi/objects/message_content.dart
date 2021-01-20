part of '../tdapi.dart';

class MessageContent extends TdObject {
  /// Contains the content of a message
  MessageContent();

  /// a MessageContent return type can be :
  /// * MessageText
  /// * MessageAnimation
  /// * MessageAudio
  /// * MessageDocument
  /// * MessagePhoto
  /// * MessageExpiredPhoto
  /// * MessageSticker
  /// * MessageVideo
  /// * MessageExpiredVideo
  /// * MessageVideoNote
  /// * MessageVoiceNote
  /// * MessageLocation
  /// * MessageVenue
  /// * MessageContact
  /// * MessageDice
  /// * MessageGame
  /// * MessagePoll
  /// * MessageInvoice
  /// * MessageCall
  /// * MessageVoiceChatStarted
  /// * MessageVoiceChatEnded
  /// * MessageInviteVoiceChatParticipants
  /// * MessageBasicGroupChatCreate
  /// * MessageSupergroupChatCreate
  /// * MessageChatChangeTitle
  /// * MessageChatChangePhoto
  /// * MessageChatDeletePhoto
  /// * MessageChatAddMembers
  /// * MessageChatJoinByLink
  /// * MessageChatDeleteMember
  /// * MessageChatUpgradeTo
  /// * MessageChatUpgradeFrom
  /// * MessagePinMessage
  /// * MessageScreenshotTaken
  /// * MessageChatSetTtl
  /// * MessageCustomServiceAction
  /// * MessageGameScore
  /// * MessagePaymentSuccessful
  /// * MessagePaymentSuccessfulBot
  /// * MessageContactRegistered
  /// * MessageWebsiteConnected
  /// * MessagePassportDataSent
  /// * MessagePassportDataReceived
  /// * MessageProximityAlertTriggered
  /// * MessageUnsupported
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
      case MessageDice.CONSTRUCTOR:
        return MessageDice.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessageVoiceChatStarted.CONSTRUCTOR:
        return MessageVoiceChatStarted.fromJson(json);
      case MessageVoiceChatEnded.CONSTRUCTOR:
        return MessageVoiceChatEnded.fromJson(json);
      case MessageInviteVoiceChatParticipants.CONSTRUCTOR:
        return MessageInviteVoiceChatParticipants.fromJson(json);
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
      case MessageChatSetTtl.CONSTRUCTOR:
        return MessageChatSetTtl.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return MessageWebsiteConnected.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'messageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageText extends MessageContent {
  /// A text message
  MessageText({this.text, this.webPage});

  /// [text] Text of the message
  FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be null
  WebPage webPage;

  /// Parse from a json
  MessageText.fromJson(Map<String, dynamic> json) {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.webPage = WebPage.fromJson(json['web_page'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "web_page": this.webPage == null ? null : this.webPage.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAnimation extends MessageContent {
  /// An animation message (GIF-style).
  MessageAnimation({this.animation, this.caption, this.isSecret});

  /// [animation] The animation description
  Animation animation;

  /// [caption] Animation caption
  FormattedText caption;

  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  MessageAnimation.fromJson(Map<String, dynamic> json) {
    this.animation =
        Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAudio extends MessageContent {
  /// An audio message
  MessageAudio({this.audio, this.caption});

  /// [audio] The audio description
  Audio audio;

  /// [caption] Audio caption
  FormattedText caption;

  /// Parse from a json
  MessageAudio.fromJson(Map<String, dynamic> json) {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio == null ? null : this.audio.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDocument extends MessageContent {
  /// A document message (general file)
  MessageDocument({this.document, this.caption});

  /// [document] The document description
  Document document;

  /// [caption] Document caption
  FormattedText caption;

  /// Parse from a json
  MessageDocument.fromJson(Map<String, dynamic> json) {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document == null ? null : this.document.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePhoto extends MessageContent {
  /// A photo message
  MessagePhoto({this.photo, this.caption, this.isSecret});

  /// [photo] The photo description
  Photo photo;

  /// [caption] Photo caption
  FormattedText caption;

  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  MessagePhoto.fromJson(Map<String, dynamic> json) {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredPhoto extends MessageContent {
  /// An expired photo message (self-destructed after TTL has elapsed)
  MessageExpiredPhoto();

  /// Parse from a json
  MessageExpiredPhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageExpiredPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSticker extends MessageContent {
  /// A sticker message
  MessageSticker({this.sticker});

  /// [sticker] The sticker description
  Sticker sticker;

  /// Parse from a json
  MessageSticker.fromJson(Map<String, dynamic> json) {
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideo extends MessageContent {
  /// A video message
  MessageVideo({this.video, this.caption, this.isSecret});

  /// [video] The video description
  Video video;

  /// [caption] Video caption
  FormattedText caption;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  MessageVideo.fromJson(Map<String, dynamic> json) {
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video == null ? null : this.video.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredVideo extends MessageContent {
  /// An expired video message (self-destructed after TTL has elapsed)
  MessageExpiredVideo();

  /// Parse from a json
  MessageExpiredVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageExpiredVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoNote extends MessageContent {
  /// A video note message
  MessageVideoNote({this.videoNote, this.isViewed, this.isSecret});

  /// [videoNote] The video note description
  VideoNote videoNote;

  /// [isViewed] True, if at least one of the recipients has viewed the video note
  bool isViewed;

  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  bool isSecret;

  /// Parse from a json
  MessageVideoNote.fromJson(Map<String, dynamic> json) {
    this.videoNote =
        VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.isViewed = json['is_viewed'];
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote == null ? null : this.videoNote.toJson(),
      "is_viewed": this.isViewed,
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceNote extends MessageContent {
  /// A voice note message
  MessageVoiceNote({this.voiceNote, this.caption, this.isListened});

  /// [voiceNote] The voice note description
  VoiceNote voiceNote;

  /// [caption] Voice note caption
  FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the voice note
  bool isListened;

  /// Parse from a json
  MessageVoiceNote.fromJson(Map<String, dynamic> json) {
    this.voiceNote =
        VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isListened = json['is_listened'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "caption": this.caption == null ? null : this.caption.toJson(),
      "is_listened": this.isListened,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageLocation extends MessageContent {
  /// A message with a location
  MessageLocation(
      {this.location,
      this.livePeriod,
      this.expiresIn,
      this.heading,
      this.proximityAlertRadius});

  /// [location] The location description
  Location location;

  /// [livePeriod] Time relative to the message send date, for which the location can be updated, in seconds
  int livePeriod;

  /// [expiresIn] Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  int heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only for the message sender
  int proximityAlertRadius;

  /// Parse from a json
  MessageLocation.fromJson(Map<String, dynamic> json) {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
    this.expiresIn = json['expires_in'];
    this.heading = json['heading'];
    this.proximityAlertRadius = json['proximity_alert_radius'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location == null ? null : this.location.toJson(),
      "live_period": this.livePeriod,
      "expires_in": this.expiresIn,
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
    };
  }

  static const CONSTRUCTOR = 'messageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVenue extends MessageContent {
  /// A message with information about a venue
  MessageVenue({this.venue});

  /// [venue] The venue description
  Venue venue;

  /// Parse from a json
  MessageVenue.fromJson(Map<String, dynamic> json) {
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": this.venue == null ? null : this.venue.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContact extends MessageContent {
  /// A message with a user contact
  MessageContact({this.contact});

  /// [contact] The contact description
  Contact contact;

  /// Parse from a json
  MessageContact.fromJson(Map<String, dynamic> json) {
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact == null ? null : this.contact.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDice extends MessageContent {
  /// A dice message. The dice value is randomly generated by the server
  MessageDice(
      {this.initialState,
      this.finalState,
      this.emoji,
      this.value,
      this.successAnimationFrameNumber});

  /// [initialState] The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  DiceStickers initialState;

  /// [finalState] The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  DiceStickers finalState;

  /// [emoji] Emoji on which the dice throw animation is based
  String emoji;

  /// [value] The dice value. If the value is 0, the dice don't have final state yet
  int value;

  /// [successAnimationFrameNumber] Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  int successAnimationFrameNumber;

  /// Parse from a json
  MessageDice.fromJson(Map<String, dynamic> json) {
    this.initialState =
        DiceStickers.fromJson(json['initial_state'] ?? <String, dynamic>{});
    this.finalState =
        DiceStickers.fromJson(json['final_state'] ?? <String, dynamic>{});
    this.emoji = json['emoji'];
    this.value = json['value'];
    this.successAnimationFrameNumber = json['success_animation_frame_number'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "initial_state":
          this.initialState == null ? null : this.initialState.toJson(),
      "final_state": this.finalState == null ? null : this.finalState.toJson(),
      "emoji": this.emoji,
      "value": this.value,
      "success_animation_frame_number": this.successAnimationFrameNumber,
    };
  }

  static const CONSTRUCTOR = 'messageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGame extends MessageContent {
  /// A message with a game
  MessageGame({this.game});

  /// [game] The game description
  Game game;

  /// Parse from a json
  MessageGame.fromJson(Map<String, dynamic> json) {
    this.game = Game.fromJson(json['game'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game": this.game == null ? null : this.game.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePoll extends MessageContent {
  /// A message with a poll
  MessagePoll({this.poll});

  /// [poll] The poll description
  Poll poll;

  /// Parse from a json
  MessagePoll.fromJson(Map<String, dynamic> json) {
    this.poll = Poll.fromJson(json['poll'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": this.poll == null ? null : this.poll.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInvoice extends MessageContent {
  /// A message with an invoice from a bot
  MessageInvoice(
      {this.title,
      this.description,
      this.photo,
      this.currency,
      this.totalAmount,
      this.startParameter,
      this.isTest,
      this.needShippingAddress,
      this.receiptMessageId});

  /// [title] Product title
  String title;

  /// [description] Product description
  String description;

  /// [photo] Product photo; may be null
  Photo photo;

  /// [currency] Currency for the product price
  String currency;

  /// [totalAmount] Product total price in the minimal quantity of the currency
  int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
  String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  bool isTest;

  /// [needShippingAddress] True, if the shipping address should be specified
  bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
  int receiptMessageId;

  /// Parse from a json
  MessageInvoice.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.description = json['description'];
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
    this.startParameter = json['start_parameter'];
    this.isTest = json['is_test'];
    this.needShippingAddress = json['need_shipping_address'];
    this.receiptMessageId = json['receipt_message_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "description": this.description,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "start_parameter": this.startParameter,
      "is_test": this.isTest,
      "need_shipping_address": this.needShippingAddress,
      "receipt_message_id": this.receiptMessageId,
    };
  }

  static const CONSTRUCTOR = 'messageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCall extends MessageContent {
  /// A message with information about an ended call
  MessageCall({this.isVideo, this.discardReason, this.duration});

  /// [isVideo] True, if the call was a video call
  bool isVideo;

  /// [discardReason] Reason why the call was discarded
  CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  int duration;

  /// Parse from a json
  MessageCall.fromJson(Map<String, dynamic> json) {
    this.isVideo = json['is_video'];
    this.discardReason = CallDiscardReason.fromJson(
        json['discard_reason'] ?? <String, dynamic>{});
    this.duration = json['duration'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_video": this.isVideo,
      "discard_reason":
          this.discardReason == null ? null : this.discardReason.toJson(),
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'messageCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceChatStarted extends MessageContent {
  /// A newly created voice chat
  MessageVoiceChatStarted({this.groupCallId});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// Parse from a json
  MessageVoiceChatStarted.fromJson(Map<String, dynamic> json) {
    this.groupCallId = json['group_call_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceChatStarted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceChatEnded extends MessageContent {
  /// A message with information about an ended voice chat
  MessageVoiceChatEnded({this.duration});

  /// [duration] Call duration
  int duration;

  /// Parse from a json
  MessageVoiceChatEnded.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceChatEnded';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInviteVoiceChatParticipants extends MessageContent {
  /// A message with information about an invite to a voice chat
  MessageInviteVoiceChatParticipants({this.groupCallId, this.userIds});

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// [userIds] Invited user identifiers
  List<int> userIds;

  /// Parse from a json
  MessageInviteVoiceChatParticipants.fromJson(Map<String, dynamic> json) {
    this.groupCallId = json['group_call_id'];
    this.userIds =
        List<int>.from((json['user_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageInviteVoiceChatParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageBasicGroupChatCreate extends MessageContent {
  /// A newly created basic group
  MessageBasicGroupChatCreate({this.title, this.memberUserIds});

  /// [title] Title of the basic group
  String title;

  /// [memberUserIds] User identifiers of members in the basic group
  List<int> memberUserIds;

  /// Parse from a json
  MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.memberUserIds = List<int>.from(
        (json['member_user_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageBasicGroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSupergroupChatCreate extends MessageContent {
  /// A newly created supergroup or channel
  MessageSupergroupChatCreate({this.title});

  /// [title] Title of the supergroup or channel
  String title;

  /// Parse from a json
  MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'messageSupergroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangeTitle extends MessageContent {
  /// An updated chat title
  MessageChatChangeTitle({this.title});

  /// [title] New chat title
  String title;

  /// Parse from a json
  MessageChatChangeTitle.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'messageChatChangeTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangePhoto extends MessageContent {
  /// An updated chat photo
  MessageChatChangePhoto({this.photo});

  /// [photo] New chat photo
  ChatPhoto photo;

  /// Parse from a json
  MessageChatChangePhoto.fromJson(Map<String, dynamic> json) {
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageChatChangePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeletePhoto extends MessageContent {
  /// A deleted chat photo
  MessageChatDeletePhoto();

  /// Parse from a json
  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageChatDeletePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatAddMembers extends MessageContent {
  /// New chat members were added
  MessageChatAddMembers({this.memberUserIds});

  /// [memberUserIds] User identifiers of the new members
  List<int> memberUserIds;

  /// Parse from a json
  MessageChatAddMembers.fromJson(Map<String, dynamic> json) {
    this.memberUserIds = List<int>.from(
        (json['member_user_ids'] ?? []).map((item) => item).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageChatAddMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatJoinByLink extends MessageContent {
  /// A new member joined the chat by invite link
  MessageChatJoinByLink();

  /// Parse from a json
  MessageChatJoinByLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeleteMember extends MessageContent {
  /// A chat member was deleted
  MessageChatDeleteMember({this.userId});

  /// [userId] User identifier of the deleted chat member
  int userId;

  /// Parse from a json
  MessageChatDeleteMember.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'messageChatDeleteMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeTo extends MessageContent {
  /// A basic group was upgraded to a supergroup and was deactivated as the result
  MessageChatUpgradeTo({this.supergroupId});

  /// [supergroupId] Identifier of the supergroup to which the basic group was upgraded
  int supergroupId;

  /// Parse from a json
  MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) {
    this.supergroupId = json['supergroup_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
    };
  }

  static const CONSTRUCTOR = 'messageChatUpgradeTo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeFrom extends MessageContent {
  /// A supergroup has been created from a basic group
  MessageChatUpgradeFrom({this.title, this.basicGroupId});

  /// [title] Title of the newly created supergroup
  String title;

  /// [basicGroupId] The identifier of the original basic group
  int basicGroupId;

  /// Parse from a json
  MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.basicGroupId = json['basic_group_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "basic_group_id": this.basicGroupId,
    };
  }

  static const CONSTRUCTOR = 'messageChatUpgradeFrom';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePinMessage extends MessageContent {
  /// A message has been pinned
  MessagePinMessage({this.messageId});

  /// [messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  int messageId;

  /// Parse from a json
  MessagePinMessage.fromJson(Map<String, dynamic> json) {
    this.messageId = json['message_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
    };
  }

  static const CONSTRUCTOR = 'messagePinMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageScreenshotTaken extends MessageContent {
  /// A screenshot of a message in the chat has been taken
  MessageScreenshotTaken();

  /// Parse from a json
  MessageScreenshotTaken.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatSetTtl extends MessageContent {
  /// The TTL (Time To Live) setting messages in a secret chat has been changed
  MessageChatSetTtl({this.ttl});

  /// [ttl] New TTL
  int ttl;

  /// Parse from a json
  MessageChatSetTtl.fromJson(Map<String, dynamic> json) {
    this.ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'messageChatSetTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCustomServiceAction extends MessageContent {
  /// A non-standard action has happened in the chat
  MessageCustomServiceAction({this.text});

  /// [text] Message text to be shown in the chat
  String text;

  /// Parse from a json
  MessageCustomServiceAction.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }

  static const CONSTRUCTOR = 'messageCustomServiceAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGameScore extends MessageContent {
  /// A new high score was achieved in a game
  MessageGameScore({this.gameMessageId, this.gameId, this.score});

  /// [gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message
  int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game
  int gameId;

  /// [score] New score
  int score;

  /// Parse from a json
  MessageGameScore.fromJson(Map<String, dynamic> json) {
    this.gameMessageId = json['game_message_id'];
    this.gameId = int.tryParse(json['game_id'] ?? "");
    this.score = json['score'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game_message_id": this.gameMessageId,
      "game_id": this.gameId,
      "score": this.score,
    };
  }

  static const CONSTRUCTOR = 'messageGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessful extends MessageContent {
  /// A payment has been completed
  MessagePaymentSuccessful(
      {this.invoiceMessageId, this.currency, this.totalAmount});

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  int invoiceMessageId;

  /// [currency] Currency for the price of the product
  String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  /// Parse from a json
  MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) {
    this.invoiceMessageId = json['invoice_message_id'];
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice_message_id": this.invoiceMessageId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
    };
  }

  static const CONSTRUCTOR = 'messagePaymentSuccessful';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessfulBot extends MessageContent {
  /// A payment has been completed; for bots only
  MessagePaymentSuccessfulBot(
      {this.invoiceMessageId,
      this.currency,
      this.totalAmount,
      this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo,
      this.telegramPaymentChargeId,
      this.providerPaymentChargeId});

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  int invoiceMessageId;

  /// [currency] Currency for price of the product
  String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  /// [invoicePayload] Invoice payload
  String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable
  String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  OrderInfo orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  String providerPaymentChargeId;

  /// Parse from a json
  MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) {
    this.invoiceMessageId = json['invoice_message_id'];
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
    this.invoicePayload = json['invoice_payload'];
    this.shippingOptionId = json['shipping_option_id'];
    this.orderInfo =
        OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{});
    this.telegramPaymentChargeId = json['telegram_payment_charge_id'];
    this.providerPaymentChargeId = json['provider_payment_charge_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice_message_id": this.invoiceMessageId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "invoice_payload": this.invoicePayload,
      "shipping_option_id": this.shippingOptionId,
      "order_info": this.orderInfo == null ? null : this.orderInfo.toJson(),
      "telegram_payment_charge_id": this.telegramPaymentChargeId,
      "provider_payment_charge_id": this.providerPaymentChargeId,
    };
  }

  static const CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContactRegistered extends MessageContent {
  /// A contact has registered with Telegram
  MessageContactRegistered();

  /// Parse from a json
  MessageContactRegistered.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageWebsiteConnected extends MessageContent {
  /// The current user has connected a website by logging in using Telegram Login Widget on it
  MessageWebsiteConnected({this.domainName});

  /// [domainName] Domain name of the connected website
  String domainName;

  /// Parse from a json
  MessageWebsiteConnected.fromJson(Map<String, dynamic> json) {
    this.domainName = json['domain_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "domain_name": this.domainName,
    };
  }

  static const CONSTRUCTOR = 'messageWebsiteConnected';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataSent extends MessageContent {
  /// Telegram Passport data has been sent
  MessagePassportDataSent({this.types});

  /// [types] List of Telegram Passport element types sent
  List<PassportElementType> types;

  /// Parse from a json
  MessagePassportDataSent.fromJson(Map<String, dynamic> json) {
    this.types = List<PassportElementType>.from((json['types'] ?? [])
        .map(
            (item) => PassportElementType.fromJson(item ?? <String, dynamic>{}))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "types": this.types.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messagePassportDataSent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataReceived extends MessageContent {
  /// Telegram Passport data has been received; for bots only
  MessagePassportDataReceived({this.elements, this.credentials});

  /// [elements] List of received Telegram Passport elements
  List<EncryptedPassportElement> elements;

  /// [credentials] Encrypted data credentials
  EncryptedCredentials credentials;

  /// Parse from a json
  MessagePassportDataReceived.fromJson(Map<String, dynamic> json) {
    this.elements = List<EncryptedPassportElement>.from((json['elements'] ?? [])
        .map((item) =>
            EncryptedPassportElement.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.credentials = EncryptedCredentials.fromJson(
        json['credentials'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
      "credentials":
          this.credentials == null ? null : this.credentials.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messagePassportDataReceived';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageProximityAlertTriggered extends MessageContent {
  /// A user in the chat came within proximity alert range
  MessageProximityAlertTriggered({this.traveler, this.watcher, this.distance});

  /// [traveler] The user or chat, which triggered the proximity alert
  MessageSender traveler;

  /// [watcher] The user or chat, which subscribed for the proximity alert
  MessageSender watcher;

  /// [distance] The distance between the users
  int distance;

  /// Parse from a json
  MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) {
    this.traveler =
        MessageSender.fromJson(json['traveler'] ?? <String, dynamic>{});
    this.watcher =
        MessageSender.fromJson(json['watcher'] ?? <String, dynamic>{});
    this.distance = json['distance'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "traveler": this.traveler == null ? null : this.traveler.toJson(),
      "watcher": this.watcher == null ? null : this.watcher.toJson(),
      "distance": this.distance,
    };
  }

  static const CONSTRUCTOR = 'messageProximityAlertTriggered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageUnsupported extends MessageContent {
  /// Message content that is not supported in the current TDLib version
  MessageUnsupported();

  /// Parse from a json
  MessageUnsupported.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;
}
