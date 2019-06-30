part of '../tdapi.dart';

class MessageContent implements TLObject {
  /// Contains the content of a message
  MessageContent();

  /// a MessageContent return type can be :
  /// * MessagePinMessage
  /// * MessageCustomServiceAction
  /// * MessageVideo
  /// * MessageVenue
  /// * MessageChatChangePhoto
  /// * MessageChatDeletePhoto
  /// * MessagePoll
  /// * MessageSticker
  /// * MessageText
  /// * MessagePassportDataSent
  /// * MessageChatDeleteMember
  /// * MessageCall
  /// * MessagePassportDataReceived
  /// * MessageGameScore
  /// * MessageScreenshotTaken
  /// * MessageBasicGroupChatCreate
  /// * MessagePhoto
  /// * MessageGame
  /// * MessageDocument
  /// * MessageUnsupported
  /// * MessageContactRegistered
  /// * MessagePaymentSuccessful
  /// * MessageChatSetTtl
  /// * MessageAnimation
  /// * MessageChatUpgradeTo
  /// * MessageChatChangeTitle
  /// * MessageChatUpgradeFrom
  /// * MessageChatJoinByLink
  /// * MessageChatAddMembers
  /// * MessageVoiceNote
  /// * MessageExpiredPhoto
  /// * MessageVideoNote
  /// * MessageAudio
  /// * MessageSupergroupChatCreate
  /// * MessageExpiredVideo
  /// * MessageContact
  /// * MessagePaymentSuccessfulBot
  /// * MessageWebsiteConnected
  /// * MessageLocation
  /// * MessageInvoice
  factory MessageContent.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case MessagePinMessage.CONSTRUCTOR:
        return MessagePinMessage.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageVideo.CONSTRUCTOR:
        return MessageVideo.fromJson(json);
      case MessageVenue.CONSTRUCTOR:
        return MessageVenue.fromJson(json);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return MessageChatDeletePhoto.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageSticker.CONSTRUCTOR:
        return MessageSticker.fromJson(json);
      case MessageText.CONSTRUCTOR:
        return MessageText.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return MessageChatDeleteMember.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return MessageScreenshotTaken.fromJson(json);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessagePhoto.CONSTRUCTOR:
        return MessagePhoto.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessageDocument.CONSTRUCTOR:
        return MessageDocument.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessageChatSetTtl.CONSTRUCTOR:
        return MessageChatSetTtl.fromJson(json);
      case MessageAnimation.CONSTRUCTOR:
        return MessageAnimation.fromJson(json);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatAddMembers.CONSTRUCTOR:
        return MessageChatAddMembers.fromJson(json);
      case MessageVoiceNote.CONSTRUCTOR:
        return MessageVoiceNote.fromJson(json);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return MessageExpiredPhoto.fromJson(json);
      case MessageVideoNote.CONSTRUCTOR:
        return MessageVideoNote.fromJson(json);
      case MessageAudio.CONSTRUCTOR:
        return MessageAudio.fromJson(json);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageExpiredVideo.CONSTRUCTOR:
        return MessageExpiredVideo.fromJson(json);
      case MessageContact.CONSTRUCTOR:
        return MessageContact.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return MessageWebsiteConnected.fromJson(json);
      case MessageLocation.CONSTRUCTOR:
        return MessageLocation.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'messageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageText implements MessageContent {
  FormattedText text;
  WebPage webPage;

  /// A text message.
  ///[text] Text of the message .
  /// [webPage] A preview of the web page that's mentioned in the text; may be null
  MessageText({this.text, this.webPage});

  /// Parse from a json
  MessageText.fromJson(Map<String, dynamic> json) {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.webPage = WebPage.fromJson(json['web_page'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'web_page': this.webPage.toJson()
    };
  }

  static const String CONSTRUCTOR = 'messageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAnimation implements MessageContent {
  Animation animation;
  FormattedText caption;
  bool isSecret;

  /// An animation message (GIF-style)..
  ///[animation] Message content .
  /// [caption] Animation caption .
  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  MessageAnimation({this.animation, this.caption, this.isSecret});

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
      '@type': CONSTRUCTOR,
      'animation': this.animation.toJson(),
      'caption': this.caption.toJson(),
      'is_secret': this.isSecret
    };
  }

  static const String CONSTRUCTOR = 'messageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageAudio implements MessageContent {
  Audio audio;
  FormattedText caption;

  /// An audio message.
  ///[audio] Message content .
  /// [caption] Audio caption
  MessageAudio({this.audio, this.caption});

  /// Parse from a json
  MessageAudio.fromJson(Map<String, dynamic> json) {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'audio': this.audio.toJson(),
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'messageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageDocument implements MessageContent {
  Document document;
  FormattedText caption;

  /// A document message (general file).
  ///[document] Message content .
  /// [caption] Document caption
  MessageDocument({this.document, this.caption});

  /// Parse from a json
  MessageDocument.fromJson(Map<String, dynamic> json) {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.caption =
        FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'document': this.document.toJson(),
      'caption': this.caption.toJson()
    };
  }

  static const String CONSTRUCTOR = 'messageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePhoto implements MessageContent {
  Photo photo;
  FormattedText caption;
  bool isSecret;

  /// A photo message.
  ///[photo] Message content .
  /// [caption] Photo caption .
  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  MessagePhoto({this.photo, this.caption, this.isSecret});

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
      '@type': CONSTRUCTOR,
      'photo': this.photo.toJson(),
      'caption': this.caption.toJson(),
      'is_secret': this.isSecret
    };
  }

  static const String CONSTRUCTOR = 'messagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredPhoto implements MessageContent {
  /// An expired photo message (self-destructed after TTL has elapsed).
  ///
  MessageExpiredPhoto();

  /// Parse from a json
  MessageExpiredPhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageExpiredPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSticker implements MessageContent {
  Sticker sticker;

  /// A sticker message.
  ///[sticker] Message content
  MessageSticker({this.sticker});

  /// Parse from a json
  MessageSticker.fromJson(Map<String, dynamic> json) {
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'sticker': this.sticker.toJson()};
  }

  static const String CONSTRUCTOR = 'messageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideo implements MessageContent {
  Video video;
  FormattedText caption;
  bool isSecret;

  /// A video message.
  ///[video] Message content .
  /// [caption] Video caption .
  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  MessageVideo({this.video, this.caption, this.isSecret});

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
      '@type': CONSTRUCTOR,
      'video': this.video.toJson(),
      'caption': this.caption.toJson(),
      'is_secret': this.isSecret
    };
  }

  static const String CONSTRUCTOR = 'messageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExpiredVideo implements MessageContent {
  /// An expired video message (self-destructed after TTL has elapsed).
  ///
  MessageExpiredVideo();

  /// Parse from a json
  MessageExpiredVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageExpiredVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVideoNote implements MessageContent {
  VideoNote videoNote;
  bool isViewed;
  bool isSecret;

  /// A video note message.
  ///[videoNote] Message content .
  /// [isViewed] True, if at least one of the recipients has viewed the video note .
  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  MessageVideoNote({this.videoNote, this.isViewed, this.isSecret});

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
      '@type': CONSTRUCTOR,
      'video_note': this.videoNote.toJson(),
      'is_viewed': this.isViewed,
      'is_secret': this.isSecret
    };
  }

  static const String CONSTRUCTOR = 'messageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVoiceNote implements MessageContent {
  VoiceNote voiceNote;
  FormattedText caption;
  bool isListened;

  /// A voice note message.
  ///[voiceNote] Message content .
  /// [caption] Voice note caption .
  /// [isListened] True, if at least one of the recipients has listened to the voice note
  MessageVoiceNote({this.voiceNote, this.caption, this.isListened});

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
      '@type': CONSTRUCTOR,
      'voice_note': this.voiceNote.toJson(),
      'caption': this.caption.toJson(),
      'is_listened': this.isListened
    };
  }

  static const String CONSTRUCTOR = 'messageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageLocation implements MessageContent {
  Location location;
  int livePeriod;
  int expiresIn;

  /// A message with a location.
  ///[location] Message content .
  /// [livePeriod] Time relative to the message sent date until which the location can be updated, in seconds.
  /// [expiresIn] Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
  MessageLocation({this.location, this.livePeriod, this.expiresIn});

  /// Parse from a json
  MessageLocation.fromJson(Map<String, dynamic> json) {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
    this.expiresIn = json['expires_in'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'location': this.location.toJson(),
      'live_period': this.livePeriod,
      'expires_in': this.expiresIn
    };
  }

  static const String CONSTRUCTOR = 'messageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageVenue implements MessageContent {
  Venue venue;

  /// A message with information about a venue.
  ///[venue] Message content
  MessageVenue({this.venue});

  /// Parse from a json
  MessageVenue.fromJson(Map<String, dynamic> json) {
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'venue': this.venue.toJson()};
  }

  static const String CONSTRUCTOR = 'messageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContact implements MessageContent {
  Contact contact;

  /// A message with a user contact.
  ///[contact] Message content
  MessageContact({this.contact});

  /// Parse from a json
  MessageContact.fromJson(Map<String, dynamic> json) {
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'contact': this.contact.toJson()};
  }

  static const String CONSTRUCTOR = 'messageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGame implements MessageContent {
  Game game;

  /// A message with a game.
  ///[game] Game
  MessageGame({this.game});

  /// Parse from a json
  MessageGame.fromJson(Map<String, dynamic> json) {
    this.game = Game.fromJson(json['game'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'game': this.game.toJson()};
  }

  static const String CONSTRUCTOR = 'messageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePoll implements MessageContent {
  Poll poll;

  /// A message with a poll.
  ///[poll] Poll
  MessagePoll({this.poll});

  /// Parse from a json
  MessagePoll.fromJson(Map<String, dynamic> json) {
    this.poll = Poll.fromJson(json['poll'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'poll': this.poll.toJson()};
  }

  static const String CONSTRUCTOR = 'messagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageInvoice implements MessageContent {
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
  ///[title] Product title .
  /// [paramDescription] Product description .
  /// [photo] Product photo; may be null .
  /// [currency] Currency for the product price .
  /// [totalAmount] Product total price in the minimal quantity of the currency.
  /// [startParameter] Unique invoice bot start_parameter. To share an invoice use the URL https.
  /// [needShippingAddress] True, if the shipping address should be specified .
  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
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
      '@type': CONSTRUCTOR,
      'title': this.title,
      'description': this.description,
      'photo': this.photo.toJson(),
      'currency': this.currency,
      'total_amount': this.totalAmount,
      'start_parameter': this.startParameter,
      'is_test': this.isTest,
      'need_shipping_address': this.needShippingAddress,
      'receipt_message_id': this.receiptMessageId
    };
  }

  static const String CONSTRUCTOR = 'messageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCall implements MessageContent {
  var discardReason;
  int duration;

  /// A message with information about an ended call.
  ///[discardReason] Reason why the call was discarded .
  /// [duration] Call duration, in seconds
  MessageCall({this.discardReason, this.duration});

  /// Parse from a json
  MessageCall.fromJson(Map<String, dynamic> json) {
    this.discardReason = CallDiscardReason.fromJson(
        json['discard_reason'] ?? <String, dynamic>{});
    this.duration = json['duration'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'discard_reason': this.discardReason.toJson(),
      'duration': this.duration
    };
  }

  static const String CONSTRUCTOR = 'messageCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageBasicGroupChatCreate implements MessageContent {
  String title;
  List<int> memberUserIds;

  /// A newly created basic group.
  ///[title] Title of the basic group .
  /// [memberUserIds] User identifiers of members in the basic group
  MessageBasicGroupChatCreate({this.title, this.memberUserIds});

  /// Parse from a json
  MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.memberUserIds = json['member_user_ids'] ?? [];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'title': this.title,
      'member_user_ids': this.memberUserIds
    };
  }

  static const String CONSTRUCTOR = 'messageBasicGroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSupergroupChatCreate implements MessageContent {
  String title;

  /// A newly created supergroup or channel.
  ///[title] Title of the supergroup or channel
  MessageSupergroupChatCreate({this.title});

  /// Parse from a json
  MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'title': this.title};
  }

  static const String CONSTRUCTOR = 'messageSupergroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangeTitle implements MessageContent {
  String title;

  /// An updated chat title.
  ///[title] New chat title
  MessageChatChangeTitle({this.title});

  /// Parse from a json
  MessageChatChangeTitle.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'title': this.title};
  }

  static const String CONSTRUCTOR = 'messageChatChangeTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatChangePhoto implements MessageContent {
  Photo photo;

  /// An updated chat photo.
  ///[photo] New chat photo
  MessageChatChangePhoto({this.photo});

  /// Parse from a json
  MessageChatChangePhoto.fromJson(Map<String, dynamic> json) {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'photo': this.photo.toJson()};
  }

  static const String CONSTRUCTOR = 'messageChatChangePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeletePhoto implements MessageContent {
  /// A deleted chat photo.
  ///
  MessageChatDeletePhoto();

  /// Parse from a json
  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageChatDeletePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatAddMembers implements MessageContent {
  List<int> memberUserIds;

  /// New chat members were added.
  ///[memberUserIds] User identifiers of the new members
  MessageChatAddMembers({this.memberUserIds});

  /// Parse from a json
  MessageChatAddMembers.fromJson(Map<String, dynamic> json) {
    this.memberUserIds = json['member_user_ids'] ?? [];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'member_user_ids': this.memberUserIds};
  }

  static const String CONSTRUCTOR = 'messageChatAddMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatJoinByLink implements MessageContent {
  /// A new member joined the chat by invite link.
  ///
  MessageChatJoinByLink();

  /// Parse from a json
  MessageChatJoinByLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatDeleteMember implements MessageContent {
  int userId;

  /// A chat member was deleted.
  ///[userId] User identifier of the deleted chat member
  MessageChatDeleteMember({this.userId});

  /// Parse from a json
  MessageChatDeleteMember.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'user_id': this.userId};
  }

  static const String CONSTRUCTOR = 'messageChatDeleteMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeTo implements MessageContent {
  int supergroupId;

  /// A basic group was upgraded to a supergroup and was deactivated as the result.
  ///[supergroupId] Identifier of the supergroup to which the basic group was upgraded
  MessageChatUpgradeTo({this.supergroupId});

  /// Parse from a json
  MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) {
    this.supergroupId = json['supergroup_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'supergroup_id': this.supergroupId};
  }

  static const String CONSTRUCTOR = 'messageChatUpgradeTo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatUpgradeFrom implements MessageContent {
  String title;
  int basicGroupId;

  /// A supergroup has been created from a basic group.
  ///[title] Title of the newly created supergroup .
  /// [basicGroupId] The identifier of the original basic group
  MessageChatUpgradeFrom({this.title, this.basicGroupId});

  /// Parse from a json
  MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.basicGroupId = json['basic_group_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'title': this.title,
      'basic_group_id': this.basicGroupId
    };
  }

  static const String CONSTRUCTOR = 'messageChatUpgradeFrom';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePinMessage implements MessageContent {
  int messageId;

  /// A message has been pinned.
  ///[messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  MessagePinMessage({this.messageId});

  /// Parse from a json
  MessagePinMessage.fromJson(Map<String, dynamic> json) {
    this.messageId = json['message_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'message_id': this.messageId};
  }

  static const String CONSTRUCTOR = 'messagePinMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageScreenshotTaken implements MessageContent {
  /// A screenshot of a message in the chat has been taken.
  ///
  MessageScreenshotTaken();

  /// Parse from a json
  MessageScreenshotTaken.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageChatSetTtl implements MessageContent {
  int ttl;

  /// The TTL (Time To Live) setting messages in a secret chat has been changed.
  ///[ttl] New TTL
  MessageChatSetTtl({this.ttl});

  /// Parse from a json
  MessageChatSetTtl.fromJson(Map<String, dynamic> json) {
    this.ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'ttl': this.ttl};
  }

  static const String CONSTRUCTOR = 'messageChatSetTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageCustomServiceAction implements MessageContent {
  String text;

  /// A non-standard action has happened in the chat.
  ///[text] Message text to be shown in the chat
  MessageCustomServiceAction({this.text});

  /// Parse from a json
  MessageCustomServiceAction.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'text': this.text};
  }

  static const String CONSTRUCTOR = 'messageCustomServiceAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageGameScore implements MessageContent {
  int gameMessageId;
  int gameId;
  int score;

  /// A new high score was achieved in a game.
  ///[gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message .
  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game .
  /// [score] New score
  MessageGameScore({this.gameMessageId, this.gameId, this.score});

  /// Parse from a json
  MessageGameScore.fromJson(Map<String, dynamic> json) {
    this.gameMessageId = json['game_message_id'];
    this.gameId = json['game_id'];
    this.score = json['score'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'game_message_id': this.gameMessageId,
      'game_id': this.gameId,
      'score': this.score
    };
  }

  static const String CONSTRUCTOR = 'messageGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessful implements MessageContent {
  int invoiceMessageId;
  String currency;
  int totalAmount;

  /// A payment has been completed.
  ///[invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message .
  /// [currency] Currency for the price of the product .
  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  MessagePaymentSuccessful(
      {this.invoiceMessageId, this.currency, this.totalAmount});

  /// Parse from a json
  MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) {
    this.invoiceMessageId = json['invoice_message_id'];
    this.currency = json['currency'];
    this.totalAmount = json['total_amount'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'invoice_message_id': this.invoiceMessageId,
      'currency': this.currency,
      'total_amount': this.totalAmount
    };
  }

  static const String CONSTRUCTOR = 'messagePaymentSuccessful';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePaymentSuccessfulBot implements MessageContent {
  int invoiceMessageId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  String telegramPaymentChargeId;
  String providerPaymentChargeId;

  /// A payment has been completed; for bots only.
  ///[invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message .
  /// [currency] Currency for price of the product.
  /// [totalAmount] Total price for the product, in the minimal quantity of the currency .
  /// [invoicePayload] Invoice payload .
  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable .
  /// [orderInfo] Information about the order; may be null.
  /// [telegramPaymentChargeId] Telegram payment identifier .
  /// [providerPaymentChargeId] Provider payment identifier
  MessagePaymentSuccessfulBot(
      {this.invoiceMessageId,
      this.currency,
      this.totalAmount,
      this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo,
      this.telegramPaymentChargeId,
      this.providerPaymentChargeId});

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
      '@type': CONSTRUCTOR,
      'invoice_message_id': this.invoiceMessageId,
      'currency': this.currency,
      'total_amount': this.totalAmount,
      'invoice_payload': this.invoicePayload,
      'shipping_option_id': this.shippingOptionId,
      'order_info': this.orderInfo.toJson(),
      'telegram_payment_charge_id': this.telegramPaymentChargeId,
      'provider_payment_charge_id': this.providerPaymentChargeId
    };
  }

  static const String CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageContactRegistered implements MessageContent {
  /// A contact has registered with Telegram.
  ///
  MessageContactRegistered();

  /// Parse from a json
  MessageContactRegistered.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageWebsiteConnected implements MessageContent {
  String domainName;

  /// The current user has connected a website by logging in using Telegram Login Widget on it.
  ///[domainName] Domain name of the connected website
  MessageWebsiteConnected({this.domainName});

  /// Parse from a json
  MessageWebsiteConnected.fromJson(Map<String, dynamic> json) {
    this.domainName = json['domain_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'domain_name': this.domainName};
  }

  static const String CONSTRUCTOR = 'messageWebsiteConnected';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataSent implements MessageContent {
  List types;

  /// Telegram Passport data has been sent.
  ///[types] List of Telegram Passport element types sent
  MessagePassportDataSent({this.types});

  /// Parse from a json
  MessagePassportDataSent.fromJson(Map<String, dynamic> json) {
    this.types = (json['types'] ?? [])
        .map((listValue) => PassportElementType.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'types': this.types.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'messagePassportDataSent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessagePassportDataReceived implements MessageContent {
  List<EncryptedPassportElement> elements;
  EncryptedCredentials credentials;

  /// Telegram Passport data has been received; for bots only.
  ///[elements] List of received Telegram Passport elements .
  /// [credentials] Encrypted data credentials
  MessagePassportDataReceived({this.elements, this.credentials});

  /// Parse from a json
  MessagePassportDataReceived.fromJson(Map<String, dynamic> json) {
    this.elements = (json['elements'] ?? [])
        .map((listValue) => EncryptedPassportElement.fromJson(listValue))
        .toList();
    this.credentials = EncryptedCredentials.fromJson(
        json['credentials'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'elements': this.elements.map((listItem) => listItem.toJson()).toList(),
      'credentials': this.credentials.toJson()
    };
  }

  static const String CONSTRUCTOR = 'messagePassportDataReceived';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageUnsupported implements MessageContent {
  /// Message content that is not supported by the client.
  ///
  MessageUnsupported();

  /// Parse from a json
  MessageUnsupported.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'messageUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;
}
