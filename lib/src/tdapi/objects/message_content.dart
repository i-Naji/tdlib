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
  /// * MessageUnsupported
  factory MessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'messageContent';
}

class MessageText extends MessageContent {
  FormattedText text;
  WebPage webPage;

  /// A text message. 
  /// [text] Text of the message . 
  /// [webPage] A preview of the web page that's mentioned in the text; may be null
  MessageText({this.text,
    this.webPage});

  /// Parse from a json
  MessageText.fromJson(Map<String, dynamic> json)  {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.webPage = WebPage.fromJson(json['web_page'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "web_page": this.webPage.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageText';
}

class MessageAnimation extends MessageContent {
  Animation animation;
  FormattedText caption;
  bool isSecret;

  /// An animation message (GIF-style).. 
  /// [animation] The animation description . 
  /// [caption] Animation caption . 
  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  MessageAnimation({this.animation,
    this.caption,
    this.isSecret});

  /// Parse from a json
  MessageAnimation.fromJson(Map<String, dynamic> json)  {
    this.animation = Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageAnimation';
}

class MessageAudio extends MessageContent {
  Audio audio;
  FormattedText caption;

  /// An audio message. 
  /// [audio] The audio description . 
  /// [caption] Audio caption
  MessageAudio({this.audio,
    this.caption});

  /// Parse from a json
  MessageAudio.fromJson(Map<String, dynamic> json)  {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio.toJson(),
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageAudio';
}

class MessageDocument extends MessageContent {
  Document document;
  FormattedText caption;

  /// A document message (general file). 
  /// [document] The document description . 
  /// [caption] Document caption
  MessageDocument({this.document,
    this.caption});

  /// Parse from a json
  MessageDocument.fromJson(Map<String, dynamic> json)  {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "caption": this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageDocument';
}

class MessagePhoto extends MessageContent {
  Photo photo;
  FormattedText caption;
  bool isSecret;

  /// A photo message. 
  /// [photo] The photo description . 
  /// [caption] Photo caption . 
  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  MessagePhoto({this.photo,
    this.caption,
    this.isSecret});

  /// Parse from a json
  MessagePhoto.fromJson(Map<String, dynamic> json)  {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messagePhoto';
}

class MessageExpiredPhoto extends MessageContent {
  

  /// An expired photo message (self-destructed after TTL has elapsed)
  MessageExpiredPhoto();

  /// Parse from a json
  MessageExpiredPhoto.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageExpiredPhoto';
}

class MessageSticker extends MessageContent {
  Sticker sticker;

  /// A sticker message. 
  /// [sticker] The sticker description
  MessageSticker({this.sticker});

  /// Parse from a json
  MessageSticker.fromJson(Map<String, dynamic> json)  {
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageSticker';
}

class MessageVideo extends MessageContent {
  Video video;
  FormattedText caption;
  bool isSecret;

  /// A video message. 
  /// [video] The video description . 
  /// [caption] Video caption . 
  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  MessageVideo({this.video,
    this.caption,
    this.isSecret});

  /// Parse from a json
  MessageVideo.fromJson(Map<String, dynamic> json)  {
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageVideo';
}

class MessageExpiredVideo extends MessageContent {
  

  /// An expired video message (self-destructed after TTL has elapsed)
  MessageExpiredVideo();

  /// Parse from a json
  MessageExpiredVideo.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageExpiredVideo';
}

class MessageVideoNote extends MessageContent {
  VideoNote videoNote;
  bool isViewed;
  bool isSecret;

  /// A video note message. 
  /// [videoNote] The video note description . 
  /// [isViewed] True, if at least one of the recipients has viewed the video note . 
  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  MessageVideoNote({this.videoNote,
    this.isViewed,
    this.isSecret});

  /// Parse from a json
  MessageVideoNote.fromJson(Map<String, dynamic> json)  {
    this.videoNote = VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.isViewed = json['is_viewed'];
    this.isSecret = json['is_secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote.toJson(),
      "is_viewed": this.isViewed,
      "is_secret": this.isSecret,
    };
  }

  static const CONSTRUCTOR = 'messageVideoNote';
}

class MessageVoiceNote extends MessageContent {
  VoiceNote voiceNote;
  FormattedText caption;
  bool isListened;

  /// A voice note message. 
  /// [voiceNote] The voice note description . 
  /// [caption] Voice note caption . 
  /// [isListened] True, if at least one of the recipients has listened to the voice note
  MessageVoiceNote({this.voiceNote,
    this.caption,
    this.isListened});

  /// Parse from a json
  MessageVoiceNote.fromJson(Map<String, dynamic> json)  {
    this.voiceNote = VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.isListened = json['is_listened'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote.toJson(),
      "caption": this.caption.toJson(),
      "is_listened": this.isListened,
    };
  }

  static const CONSTRUCTOR = 'messageVoiceNote';
}

class MessageLocation extends MessageContent {
  Location location;
  int livePeriod;
  int expiresIn;

  /// A message with a location. 
  /// [location] The location description . 
  /// [livePeriod] Time relative to the message sent date until which the location can be updated, in seconds. 
  /// [expiresIn] Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  MessageLocation({this.location,
    this.livePeriod,
    this.expiresIn});

  /// Parse from a json
  MessageLocation.fromJson(Map<String, dynamic> json)  {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
    this.expiresIn = json['expires_in'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "live_period": this.livePeriod,
      "expires_in": this.expiresIn,
    };
  }

  static const CONSTRUCTOR = 'messageLocation';
}

class MessageVenue extends MessageContent {
  Venue venue;

  /// A message with information about a venue. 
  /// [venue] The venue description
  MessageVenue({this.venue});

  /// Parse from a json
  MessageVenue.fromJson(Map<String, dynamic> json)  {
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": this.venue.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageVenue';
}

class MessageContact extends MessageContent {
  Contact contact;

  /// A message with a user contact. 
  /// [contact] The contact description
  MessageContact({this.contact});

  /// Parse from a json
  MessageContact.fromJson(Map<String, dynamic> json)  {
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageContact';
}

class MessageDice extends MessageContent {
  Sticker initialStateSticker;
  Sticker finalStateSticker;
  String emoji;
  int value;
  int successAnimationFrameNumber;

  /// A dice message. The dice value is randomly generated by the server. 
  /// [initialStateSticker] The animated sticker with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known. 
  /// [finalStateSticker] The animated sticker with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known. 
  /// [emoji] Emoji on which the dice throw animation is based. 
  /// [value] The dice value. If the value is 0, the dice don't have final state yet. 
  /// [successAnimationFrameNumber] Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
  MessageDice({this.initialStateSticker,
    this.finalStateSticker,
    this.emoji,
    this.value,
    this.successAnimationFrameNumber});

  /// Parse from a json
  MessageDice.fromJson(Map<String, dynamic> json)  {
    this.initialStateSticker = Sticker.fromJson(json['initial_state_sticker'] ?? <String, dynamic>{});
    this.finalStateSticker = Sticker.fromJson(json['final_state_sticker'] ?? <String, dynamic>{});
    this.emoji = json['emoji'];
    this.value = json['value'];
    this.successAnimationFrameNumber = json['success_animation_frame_number'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "initial_state_sticker": this.initialStateSticker.toJson(),
      "final_state_sticker": this.finalStateSticker.toJson(),
      "emoji": this.emoji,
      "value": this.value,
      "success_animation_frame_number": this.successAnimationFrameNumber,
    };
  }

  static const CONSTRUCTOR = 'messageDice';
}

class MessageGame extends MessageContent {
  Game game;

  /// A message with a game. 
  /// [game] The game description
  MessageGame({this.game});

  /// Parse from a json
  MessageGame.fromJson(Map<String, dynamic> json)  {
    this.game = Game.fromJson(json['game'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game": this.game.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageGame';
}

class MessagePoll extends MessageContent {
  Poll poll;

  /// A message with a poll. 
  /// [poll] The poll description
  MessagePoll({this.poll});

  /// Parse from a json
  MessagePoll.fromJson(Map<String, dynamic> json)  {
    this.poll = Poll.fromJson(json['poll'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": this.poll.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messagePoll';
}

class MessageInvoice extends MessageContent {
  String title;
  String description;
  Photo photo;
  String currency;
  int totalAmount;
  String startParameter;
  bool isTest;
  bool needShippingAddress;
  int receiptMessageId;

  /// A message with an invoice from a bot. 
  /// [title] Product title . 
  /// [description] Product description . 
  /// [photo] Product photo; may be null . 
  /// [currency] Currency for the product price . 
  /// [totalAmount] Product total price in the minimal quantity of the currency. 
  /// [startParameter] Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}. 
  /// [isTest] True, if the invoice is a test invoice. 
  /// [needShippingAddress] True, if the shipping address should be specified. 
  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
  MessageInvoice({this.title,
    this.description,
    this.photo,
    this.currency,
    this.totalAmount,
    this.startParameter,
    this.isTest,
    this.needShippingAddress,
    this.receiptMessageId});

  /// Parse from a json
  MessageInvoice.fromJson(Map<String, dynamic> json)  {
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
      "photo": this.photo.toJson(),
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "start_parameter": this.startParameter,
      "is_test": this.isTest,
      "need_shipping_address": this.needShippingAddress,
      "receipt_message_id": this.receiptMessageId,
    };
  }

  static const CONSTRUCTOR = 'messageInvoice';
}

class MessageCall extends MessageContent {
  CallDiscardReason discardReason;
  int duration;

  /// A message with information about an ended call. 
  /// [discardReason] Reason why the call was discarded . 
  /// [duration] Call duration, in seconds
  MessageCall({this.discardReason,
    this.duration});

  /// Parse from a json
  MessageCall.fromJson(Map<String, dynamic> json)  {
    this.discardReason = CallDiscardReason.fromJson(json['discard_reason'] ?? <String, dynamic>{});
    this.duration = json['duration'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "discard_reason": this.discardReason.toJson(),
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'messageCall';
}

class MessageBasicGroupChatCreate extends MessageContent {
  String title;
  List<List<int>> memberUserIds;

  /// A newly created basic group. 
  /// [title] Title of the basic group . 
  /// [memberUserIds] User identifiers of members in the basic group
  MessageBasicGroupChatCreate({this.title,
    this.memberUserIds});

  /// Parse from a json
  MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json)  {
    this.title = json['title'];
    this.memberUserIds = List<List<int>>.from((json['member_user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "member_user_ids": this.memberUserIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageBasicGroupChatCreate';
}

class MessageSupergroupChatCreate extends MessageContent {
  String title;

  /// A newly created supergroup or channel. 
  /// [title] Title of the supergroup or channel
  MessageSupergroupChatCreate({this.title});

  /// Parse from a json
  MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json)  {
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
}

class MessageChatChangeTitle extends MessageContent {
  String title;

  /// An updated chat title. 
  /// [title] New chat title
  MessageChatChangeTitle({this.title});

  /// Parse from a json
  MessageChatChangeTitle.fromJson(Map<String, dynamic> json)  {
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
}

class MessageChatChangePhoto extends MessageContent {
  Photo photo;

  /// An updated chat photo. 
  /// [photo] New chat photo
  MessageChatChangePhoto({this.photo});

  /// Parse from a json
  MessageChatChangePhoto.fromJson(Map<String, dynamic> json)  {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageChatChangePhoto';
}

class MessageChatDeletePhoto extends MessageContent {
  

  /// A deleted chat photo
  MessageChatDeletePhoto();

  /// Parse from a json
  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageChatDeletePhoto';
}

class MessageChatAddMembers extends MessageContent {
  List<List<int>> memberUserIds;

  /// New chat members were added. 
  /// [memberUserIds] User identifiers of the new members
  MessageChatAddMembers({this.memberUserIds});

  /// Parse from a json
  MessageChatAddMembers.fromJson(Map<String, dynamic> json)  {
    this.memberUserIds = List<List<int>>.from((json['member_user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_user_ids": this.memberUserIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageChatAddMembers';
}

class MessageChatJoinByLink extends MessageContent {
  

  /// A new member joined the chat by invite link
  MessageChatJoinByLink();

  /// Parse from a json
  MessageChatJoinByLink.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageChatJoinByLink';
}

class MessageChatDeleteMember extends MessageContent {
  int userId;

  /// A chat member was deleted. 
  /// [userId] User identifier of the deleted chat member
  MessageChatDeleteMember({this.userId});

  /// Parse from a json
  MessageChatDeleteMember.fromJson(Map<String, dynamic> json)  {
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
}

class MessageChatUpgradeTo extends MessageContent {
  int supergroupId;

  /// A basic group was upgraded to a supergroup and was deactivated as the result. 
  /// [supergroupId] Identifier of the supergroup to which the basic group was upgraded
  MessageChatUpgradeTo({this.supergroupId});

  /// Parse from a json
  MessageChatUpgradeTo.fromJson(Map<String, dynamic> json)  {
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
}

class MessageChatUpgradeFrom extends MessageContent {
  String title;
  int basicGroupId;

  /// A supergroup has been created from a basic group. 
  /// [title] Title of the newly created supergroup . 
  /// [basicGroupId] The identifier of the original basic group
  MessageChatUpgradeFrom({this.title,
    this.basicGroupId});

  /// Parse from a json
  MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json)  {
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
}

class MessagePinMessage extends MessageContent {
  int messageId;

  /// A message has been pinned. 
  /// [messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  MessagePinMessage({this.messageId});

  /// Parse from a json
  MessagePinMessage.fromJson(Map<String, dynamic> json)  {
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
}

class MessageScreenshotTaken extends MessageContent {
  

  /// A screenshot of a message in the chat has been taken
  MessageScreenshotTaken();

  /// Parse from a json
  MessageScreenshotTaken.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageScreenshotTaken';
}

class MessageChatSetTtl extends MessageContent {
  int ttl;

  /// The TTL (Time To Live) setting messages in a secret chat has been changed. 
  /// [ttl] New TTL
  MessageChatSetTtl({this.ttl});

  /// Parse from a json
  MessageChatSetTtl.fromJson(Map<String, dynamic> json)  {
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
}

class MessageCustomServiceAction extends MessageContent {
  String text;

  /// A non-standard action has happened in the chat. 
  /// [text] Message text to be shown in the chat
  MessageCustomServiceAction({this.text});

  /// Parse from a json
  MessageCustomServiceAction.fromJson(Map<String, dynamic> json)  {
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
}

class MessageGameScore extends MessageContent {
  int gameMessageId;
  int gameId;
  int score;

  /// A new high score was achieved in a game. 
  /// [gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message . 
  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game . 
  /// [score] New score
  MessageGameScore({this.gameMessageId,
    this.gameId,
    this.score});

  /// Parse from a json
  MessageGameScore.fromJson(Map<String, dynamic> json)  {
    this.gameMessageId = json['game_message_id'];
    this.gameId = json['game_id'];
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
}

class MessagePaymentSuccessful extends MessageContent {
  int invoiceMessageId;
  String currency;
  int totalAmount;

  /// A payment has been completed. 
  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message . 
  /// [currency] Currency for the price of the product . 
  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  MessagePaymentSuccessful({this.invoiceMessageId,
    this.currency,
    this.totalAmount});

  /// Parse from a json
  MessagePaymentSuccessful.fromJson(Map<String, dynamic> json)  {
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
}

class MessagePaymentSuccessfulBot extends MessageContent {
  int invoiceMessageId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  String telegramPaymentChargeId;
  String providerPaymentChargeId;

  /// A payment has been completed; for bots only. 
  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message . 
  /// [currency] Currency for price of the product. 
  /// [totalAmount] Total price for the product, in the minimal quantity of the currency. 
  /// [invoicePayload] Invoice payload . 
  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable . 
  /// [orderInfo] Information about the order; may be null. 
  /// [telegramPaymentChargeId] Telegram payment identifier. 
  /// [providerPaymentChargeId] Provider payment identifier
  MessagePaymentSuccessfulBot({this.invoiceMessageId,
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    this.telegramPaymentChargeId,
    this.providerPaymentChargeId});

  /// Parse from a json
  MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json)  {
    this.invoiceMessageId = json['invoice_message_id'];
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
    this.invoicePayload = json['invoice_payload'];
    this.shippingOptionId = json['shipping_option_id'];
    this.orderInfo = OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{});
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
      "order_info": this.orderInfo.toJson(),
      "telegram_payment_charge_id": this.telegramPaymentChargeId,
      "provider_payment_charge_id": this.providerPaymentChargeId,
    };
  }

  static const CONSTRUCTOR = 'messagePaymentSuccessfulBot';
}

class MessageContactRegistered extends MessageContent {
  

  /// A contact has registered with Telegram
  MessageContactRegistered();

  /// Parse from a json
  MessageContactRegistered.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageContactRegistered';
}

class MessageWebsiteConnected extends MessageContent {
  String domainName;

  /// The current user has connected a website by logging in using Telegram Login Widget on it. 
  /// [domainName] Domain name of the connected website
  MessageWebsiteConnected({this.domainName});

  /// Parse from a json
  MessageWebsiteConnected.fromJson(Map<String, dynamic> json)  {
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
}

class MessagePassportDataSent extends MessageContent {
  List<List<PassportElementType>> types;

  /// Telegram Passport data has been sent. 
  /// [types] List of Telegram Passport element types sent
  MessagePassportDataSent({this.types});

  /// Parse from a json
  MessagePassportDataSent.fromJson(Map<String, dynamic> json)  {
    this.types = List<List<PassportElementType>>.from((json['types'] ?? []).map((item) => List<PassportElementType>.from((item ?? []).map((innerItem) => PassportElementType.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "types": this.types.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messagePassportDataSent';
}

class MessagePassportDataReceived extends MessageContent {
  List<List<EncryptedPassportElement>> elements;
  EncryptedCredentials credentials;

  /// Telegram Passport data has been received; for bots only. 
  /// [elements] List of received Telegram Passport elements . 
  /// [credentials] Encrypted data credentials
  MessagePassportDataReceived({this.elements,
    this.credentials});

  /// Parse from a json
  MessagePassportDataReceived.fromJson(Map<String, dynamic> json)  {
    this.elements = List<List<EncryptedPassportElement>>.from((json['elements'] ?? []).map((item) => List<EncryptedPassportElement>.from((item ?? []).map((innerItem) => EncryptedPassportElement.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.credentials = EncryptedCredentials.fromJson(json['credentials'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "credentials": this.credentials.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messagePassportDataReceived';
}

class MessageUnsupported extends MessageContent {
  

  /// Message content that is not supported by the client
  MessageUnsupported();

  /// Parse from a json
  MessageUnsupported.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageUnsupported';
}