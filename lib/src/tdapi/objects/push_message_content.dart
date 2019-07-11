part of '../tdapi.dart';

class PushMessageContent implements TLObject {
  /// Contains content of a push message notification
  PushMessageContent();

  /// a PushMessageContent return type can be :
  /// * PushMessageContentHidden
  /// * PushMessageContentAnimation
  /// * PushMessageContentAudio
  /// * PushMessageContentContact
  /// * PushMessageContentContactRegistered
  /// * PushMessageContentDocument
  /// * PushMessageContentGame
  /// * PushMessageContentGameScore
  /// * PushMessageContentInvoice
  /// * PushMessageContentLocation
  /// * PushMessageContentPhoto
  /// * PushMessageContentPoll
  /// * PushMessageContentScreenshotTaken
  /// * PushMessageContentSticker
  /// * PushMessageContentText
  /// * PushMessageContentVideo
  /// * PushMessageContentVideoNote
  /// * PushMessageContentVoiceNote
  /// * PushMessageContentBasicGroupChatCreate
  /// * PushMessageContentChatAddMembers
  /// * PushMessageContentChatChangePhoto
  /// * PushMessageContentChatChangeTitle
  /// * PushMessageContentChatDeleteMember
  /// * PushMessageContentChatJoinByLink
  /// * PushMessageContentMessageForwards
  /// * PushMessageContentMediaAlbum
  factory PushMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case PushMessageContentHidden.CONSTRUCTOR:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentAnimation.CONSTRUCTOR:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.CONSTRUCTOR:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentContact.CONSTRUCTOR:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.CONSTRUCTOR:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.CONSTRUCTOR:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.CONSTRUCTOR:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.CONSTRUCTOR:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentInvoice.CONSTRUCTOR:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.CONSTRUCTOR:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentPhoto.CONSTRUCTOR:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.CONSTRUCTOR:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentScreenshotTaken.CONSTRUCTOR:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.CONSTRUCTOR:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentText.CONSTRUCTOR:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.CONSTRUCTOR:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.CONSTRUCTOR:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.CONSTRUCTOR:
        return PushMessageContentVoiceNote.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.CONSTRUCTOR:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.CONSTRUCTOR:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.CONSTRUCTOR:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.CONSTRUCTOR:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatDeleteMember.CONSTRUCTOR:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.CONSTRUCTOR:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentMessageForwards.CONSTRUCTOR:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.CONSTRUCTOR:
        return PushMessageContentMediaAlbum.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "pushMessageContent";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentHidden implements PushMessageContent {
  bool isPinned;

  /// A general message with hidden content.
  ///[isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentHidden({this.isPinned});

  /// Parse from a json
  PushMessageContentHidden.fromJson(Map<String, dynamic> json) {
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "is_pinned": this.isPinned};
  }

  static const String CONSTRUCTOR = "pushMessageContentHidden";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAnimation implements PushMessageContent {
  Animation animation;
  String caption;
  bool isPinned;

  /// An animation message (GIF-style).
  ///[animation] Message content; may be null .
  /// [caption] Animation caption .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentAnimation({this.animation, this.caption, this.isPinned});

  /// Parse from a json
  PushMessageContentAnimation.fromJson(Map<String, dynamic> json) {
    this.animation =
        Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.caption = json['caption'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "caption": this.caption,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentAnimation";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAudio implements PushMessageContent {
  Audio audio;
  bool isPinned;

  /// An audio message.
  ///[audio] Message content; may be null .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentAudio({this.audio, this.isPinned});

  /// Parse from a json
  PushMessageContentAudio.fromJson(Map<String, dynamic> json) {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio.toJson(),
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentAudio";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContact implements PushMessageContent {
  String name;
  bool isPinned;

  /// A message with a user contact.
  ///[name] Contact's name .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentContact({this.name, this.isPinned});

  /// Parse from a json
  PushMessageContentContact.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentContact";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContactRegistered implements PushMessageContent {
  /// A contact has registered with Telegram.
  ///
  PushMessageContentContactRegistered();

  /// Parse from a json
  PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pushMessageContentContactRegistered";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentDocument implements PushMessageContent {
  Document document;
  bool isPinned;

  /// A document message (a general file).
  ///[document] Message content; may be null .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentDocument({this.document, this.isPinned});

  /// Parse from a json
  PushMessageContentDocument.fromJson(Map<String, dynamic> json) {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentDocument";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGame implements PushMessageContent {
  String title;
  bool isPinned;

  /// A message with a game.
  ///[title] Game title, empty for pinned game message .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentGame({this.title, this.isPinned});

  /// Parse from a json
  PushMessageContentGame.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentGame";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGameScore implements PushMessageContent {
  String title;
  int score;
  bool isPinned;

  /// A new high score was achieved in a game.
  ///[title] Game title, empty for pinned message .
  /// [score] New score, 0 for pinned message .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentGameScore({this.title, this.score, this.isPinned});

  /// Parse from a json
  PushMessageContentGameScore.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.score = json['score'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "score": this.score,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentGameScore";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentInvoice implements PushMessageContent {
  String price;
  bool isPinned;

  /// A message with an invoice from a bot.
  ///[price] Product price .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentInvoice({this.price, this.isPinned});

  /// Parse from a json
  PushMessageContentInvoice.fromJson(Map<String, dynamic> json) {
    this.price = json['price'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "price": this.price,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentInvoice";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentLocation implements PushMessageContent {
  bool isLive;
  bool isPinned;

  /// A message with a location.
  ///[isLive] True, if the location is live .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentLocation({this.isLive, this.isPinned});

  /// Parse from a json
  PushMessageContentLocation.fromJson(Map<String, dynamic> json) {
    this.isLive = json['is_live'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_live": this.isLive,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentLocation";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPhoto implements PushMessageContent {
  Photo photo;
  String caption;
  bool isSecret;
  bool isPinned;

  /// A photo message.
  ///[photo] Message content; may be null .
  /// [caption] Photo caption .
  /// [isSecret] True, if the photo is secret .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentPhoto(
      {this.photo, this.caption, this.isSecret, this.isPinned});

  /// Parse from a json
  PushMessageContentPhoto.fromJson(Map<String, dynamic> json) {
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.caption = json['caption'];
    this.isSecret = json['is_secret'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "caption": this.caption,
      "is_secret": this.isSecret,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentPhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPoll implements PushMessageContent {
  String question;
  bool isPinned;

  /// A message with a poll.
  ///[question] Poll question .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentPoll({this.question, this.isPinned});

  /// Parse from a json
  PushMessageContentPoll.fromJson(Map<String, dynamic> json) {
    this.question = json['question'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": this.question,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentPoll";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentScreenshotTaken implements PushMessageContent {
  /// A screenshot of a message in the chat has been taken.
  ///
  PushMessageContentScreenshotTaken();

  /// Parse from a json
  PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pushMessageContentScreenshotTaken";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentSticker implements PushMessageContent {
  Sticker sticker;
  String emoji;
  bool isPinned;

  /// A message with a sticker.
  ///[sticker] Message content; may be null .
  /// [emoji] Emoji corresponding to the sticker; may be empty .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentSticker({this.sticker, this.emoji, this.isPinned});

  /// Parse from a json
  PushMessageContentSticker.fromJson(Map<String, dynamic> json) {
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.emoji = json['emoji'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "emoji": this.emoji,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentSticker";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentText implements PushMessageContent {
  String text;
  bool isPinned;

  /// A text message.
  ///[text] Message text .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentText({this.text, this.isPinned});

  /// Parse from a json
  PushMessageContentText.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentText";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideo implements PushMessageContent {
  Video video;
  String caption;
  bool isSecret;
  bool isPinned;

  /// A video message.
  ///[video] Message content; may be null .
  /// [caption] Video caption .
  /// [isSecret] True, if the video is secret .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentVideo(
      {this.video, this.caption, this.isSecret, this.isPinned});

  /// Parse from a json
  PushMessageContentVideo.fromJson(Map<String, dynamic> json) {
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.caption = json['caption'];
    this.isSecret = json['is_secret'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video.toJson(),
      "caption": this.caption,
      "is_secret": this.isSecret,
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentVideo";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideoNote implements PushMessageContent {
  VideoNote videoNote;
  bool isPinned;

  /// A video note message.
  ///[videoNote] Message content; may be null .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentVideoNote({this.videoNote, this.isPinned});

  /// Parse from a json
  PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) {
    this.videoNote =
        VideoNote.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote.toJson(),
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentVideoNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVoiceNote implements PushMessageContent {
  VoiceNote voiceNote;
  bool isPinned;

  /// A voice note message.
  ///[voiceNote] Message content; may be null .
  /// [isPinned] True, if the message is a pinned message with the specified content
  PushMessageContentVoiceNote({this.voiceNote, this.isPinned});

  /// Parse from a json
  PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) {
    this.voiceNote =
        VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote.toJson(),
      "is_pinned": this.isPinned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentVoiceNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentBasicGroupChatCreate implements PushMessageContent {
  /// A newly created basic group.
  ///
  PushMessageContentBasicGroupChatCreate();

  /// Parse from a json
  PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pushMessageContentBasicGroupChatCreate";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatAddMembers implements PushMessageContent {
  String memberName;
  bool isCurrentUser;
  bool isReturned;

  /// New chat members were invited to a group.
  ///[memberName] Name of the added member .
  /// [isCurrentUser] True, if the current user was added to the group.
  /// [isReturned] True, if the user has returned to the group himself
  PushMessageContentChatAddMembers(
      {this.memberName, this.isCurrentUser, this.isReturned});

  /// Parse from a json
  PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) {
    this.memberName = json['member_name'];
    this.isCurrentUser = json['is_current_user'];
    this.isReturned = json['is_returned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_name": this.memberName,
      "is_current_user": this.isCurrentUser,
      "is_returned": this.isReturned
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentChatAddMembers";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangePhoto implements PushMessageContent {
  /// A chat photo was edited.
  ///
  PushMessageContentChatChangePhoto();

  /// Parse from a json
  PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pushMessageContentChatChangePhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangeTitle implements PushMessageContent {
  String title;

  /// A chat title was edited.
  ///[title] New chat title
  PushMessageContentChatChangeTitle({this.title});

  /// Parse from a json
  PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "title": this.title};
  }

  static const String CONSTRUCTOR = "pushMessageContentChatChangeTitle";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatDeleteMember implements PushMessageContent {
  String memberName;
  bool isCurrentUser;
  bool isLeft;

  /// A chat member was deleted.
  ///[memberName] Name of the deleted member .
  /// [isCurrentUser] True, if the current user was deleted from the group.
  /// [isLeft] True, if the user has left the group himself
  PushMessageContentChatDeleteMember(
      {this.memberName, this.isCurrentUser, this.isLeft});

  /// Parse from a json
  PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) {
    this.memberName = json['member_name'];
    this.isCurrentUser = json['is_current_user'];
    this.isLeft = json['is_left'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_name": this.memberName,
      "is_current_user": this.isCurrentUser,
      "is_left": this.isLeft
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentChatDeleteMember";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatJoinByLink implements PushMessageContent {
  /// A new member joined the chat by invite link.
  ///
  PushMessageContentChatJoinByLink();

  /// Parse from a json
  PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "pushMessageContentChatJoinByLink";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMessageForwards implements PushMessageContent {
  int totalCount;

  /// A forwarded messages.
  ///[totalCount] Number of forwarded messages
  PushMessageContentMessageForwards({this.totalCount});

  /// Parse from a json
  PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "total_count": this.totalCount};
  }

  static const String CONSTRUCTOR = "pushMessageContentMessageForwards";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMediaAlbum implements PushMessageContent {
  int totalCount;
  bool hasPhotos;
  bool hasVideos;

  /// A media album.
  ///[totalCount] Number of messages in the album .
  /// [hasPhotos] True, if the album has at least one photo .
  /// [hasVideos] True, if the album has at least one video
  PushMessageContentMediaAlbum(
      {this.totalCount, this.hasPhotos, this.hasVideos});

  /// Parse from a json
  PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.hasPhotos = json['has_photos'];
    this.hasVideos = json['has_videos'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "has_photos": this.hasPhotos,
      "has_videos": this.hasVideos
    };
  }

  static const String CONSTRUCTOR = "pushMessageContentMediaAlbum";

  @override
  String getConstructor() => CONSTRUCTOR;
}
