part of '../tdapi.dart';

class PushMessageContent extends TdObject {
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
    switch (json["@type"]) {
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

  static const CONSTRUCTOR = 'pushMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentHidden extends PushMessageContent {
  /// A general message with hidden content
  PushMessageContentHidden({this.isPinned});

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

  /// Parse from a json
  PushMessageContentHidden.fromJson(Map<String, dynamic> json) {
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentHidden';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAnimation extends PushMessageContent {
  /// An animation message (GIF-style).
  PushMessageContentAnimation({this.animation, this.caption, this.isPinned});

  /// [animation] Message content; may be null
  Animation animation;

  /// [caption] Animation caption
  String caption;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "animation": this.animation == null ? null : this.animation.toJson(),
      "caption": this.caption,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentAudio extends PushMessageContent {
  /// An audio message
  PushMessageContentAudio({this.audio, this.isPinned});

  /// [audio] Message content; may be null
  Audio audio;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

  /// Parse from a json
  PushMessageContentAudio.fromJson(Map<String, dynamic> json) {
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio == null ? null : this.audio.toJson(),
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContact extends PushMessageContent {
  /// A message with a user contact
  PushMessageContentContact({this.name, this.isPinned});

  /// [name] Contact's name
  String name;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentContactRegistered extends PushMessageContent {
  /// A contact has registered with Telegram
  PushMessageContentContactRegistered();

  /// Parse from a json
  PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentDocument extends PushMessageContent {
  /// A document message (a general file)
  PushMessageContentDocument({this.document, this.isPinned});

  /// [document] Message content; may be null
  Document document;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

  /// Parse from a json
  PushMessageContentDocument.fromJson(Map<String, dynamic> json) {
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document == null ? null : this.document.toJson(),
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGame extends PushMessageContent {
  /// A message with a game
  PushMessageContentGame({this.title, this.isPinned});

  /// [title] Game title, empty for pinned game message
  String title;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentGameScore extends PushMessageContent {
  /// A new high score was achieved in a game
  PushMessageContentGameScore({this.title, this.score, this.isPinned});

  /// [title] Game title, empty for pinned message
  String title;

  /// [score] New score, 0 for pinned message
  int score;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentInvoice extends PushMessageContent {
  /// A message with an invoice from a bot
  PushMessageContentInvoice({this.price, this.isPinned});

  /// [price] Product price
  String price;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentLocation extends PushMessageContent {
  /// A message with a location
  PushMessageContentLocation({this.isLive, this.isPinned});

  /// [isLive] True, if the location is live
  bool isLive;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPhoto extends PushMessageContent {
  /// A photo message
  PushMessageContentPhoto(
      {this.photo, this.caption, this.isSecret, this.isPinned});

  /// [photo] Message content; may be null
  Photo photo;

  /// [caption] Photo caption
  String caption;

  /// [isSecret] True, if the photo is secret
  bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "photo": this.photo == null ? null : this.photo.toJson(),
      "caption": this.caption,
      "is_secret": this.isSecret,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentPoll extends PushMessageContent {
  /// A message with a poll
  PushMessageContentPoll({this.question, this.isRegular, this.isPinned});

  /// [question] Poll question
  String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode
  bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

  /// Parse from a json
  PushMessageContentPoll.fromJson(Map<String, dynamic> json) {
    this.question = json['question'];
    this.isRegular = json['is_regular'];
    this.isPinned = json['is_pinned'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": this.question,
      "is_regular": this.isRegular,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentPoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentScreenshotTaken extends PushMessageContent {
  /// A screenshot of a message in the chat has been taken
  PushMessageContentScreenshotTaken();

  /// Parse from a json
  PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentSticker extends PushMessageContent {
  /// A message with a sticker
  PushMessageContentSticker({this.sticker, this.emoji, this.isPinned});

  /// [sticker] Message content; may be null
  Sticker sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty
  String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
      "emoji": this.emoji,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentText extends PushMessageContent {
  /// A text message
  PushMessageContentText({this.text, this.isPinned});

  /// [text] Message text
  String text;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideo extends PushMessageContent {
  /// A video message
  PushMessageContentVideo(
      {this.video, this.caption, this.isSecret, this.isPinned});

  /// [video] Message content; may be null
  Video video;

  /// [caption] Video caption
  String caption;

  /// [isSecret] True, if the video is secret
  bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "video": this.video == null ? null : this.video.toJson(),
      "caption": this.caption,
      "is_secret": this.isSecret,
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVideoNote extends PushMessageContent {
  /// A video note message
  PushMessageContentVideoNote({this.videoNote, this.isPinned});

  /// [videoNote] Message content; may be null
  VideoNote videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "video_note": this.videoNote == null ? null : this.videoNote.toJson(),
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentVoiceNote extends PushMessageContent {
  /// A voice note message
  PushMessageContentVoiceNote({this.voiceNote, this.isPinned});

  /// [voiceNote] Message content; may be null
  VoiceNote voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  bool isPinned;

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
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "is_pinned": this.isPinned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  /// A newly created basic group
  PushMessageContentBasicGroupChatCreate();

  /// Parse from a json
  PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentBasicGroupChatCreate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatAddMembers extends PushMessageContent {
  /// New chat members were invited to a group
  PushMessageContentChatAddMembers(
      {this.memberName, this.isCurrentUser, this.isReturned});

  /// [memberName] Name of the added member
  String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themself
  bool isReturned;

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
      "is_returned": this.isReturned,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatAddMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangePhoto extends PushMessageContent {
  /// A chat photo was edited
  PushMessageContentChatChangePhoto();

  /// Parse from a json
  PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatChangePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatChangeTitle extends PushMessageContent {
  /// A chat title was edited
  PushMessageContentChatChangeTitle({this.title});

  /// [title] New chat title
  String title;

  /// Parse from a json
  PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatChangeTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatDeleteMember extends PushMessageContent {
  /// A chat member was deleted
  PushMessageContentChatDeleteMember(
      {this.memberName, this.isCurrentUser, this.isLeft});

  /// [memberName] Name of the deleted member
  String memberName;

  /// [isCurrentUser] True, if the current user was deleted from the group
  bool isCurrentUser;

  /// [isLeft] True, if the user has left the group themself
  bool isLeft;

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
      "is_left": this.isLeft,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatDeleteMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentChatJoinByLink extends PushMessageContent {
  /// A new member joined the chat by invite link
  PushMessageContentChatJoinByLink();

  /// Parse from a json
  PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMessageForwards extends PushMessageContent {
  /// A forwarded messages
  PushMessageContentMessageForwards({this.totalCount});

  /// [totalCount] Number of forwarded messages
  int totalCount;

  /// Parse from a json
  PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentMessageForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PushMessageContentMediaAlbum extends PushMessageContent {
  /// A media album
  PushMessageContentMediaAlbum(
      {this.totalCount,
      this.hasPhotos,
      this.hasVideos,
      this.hasAudios,
      this.hasDocuments});

  /// [totalCount] Number of messages in the album
  int totalCount;

  /// [hasPhotos] True, if the album has at least one photo
  bool hasPhotos;

  /// [hasVideos] True, if the album has at least one video
  bool hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  bool hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  bool hasDocuments;

  /// Parse from a json
  PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.hasPhotos = json['has_photos'];
    this.hasVideos = json['has_videos'];
    this.hasAudios = json['has_audios'];
    this.hasDocuments = json['has_documents'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "has_photos": this.hasPhotos,
      "has_videos": this.hasVideos,
      "has_audios": this.hasAudios,
      "has_documents": this.hasDocuments,
    };
  }

  static const CONSTRUCTOR = 'pushMessageContentMediaAlbum';

  @override
  String getConstructor() => CONSTRUCTOR;
}
