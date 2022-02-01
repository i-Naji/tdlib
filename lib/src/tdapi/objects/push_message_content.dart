part of '../tdapi.dart';

class PushMessageContent extends TdObject {

  /// Contains content of a push message notification
  const PushMessageContent();
  
  /// a PushMessageContent return type can be :
  /// * [PushMessageContentHidden]
  /// * [PushMessageContentAnimation]
  /// * [PushMessageContentAudio]
  /// * [PushMessageContentContact]
  /// * [PushMessageContentContactRegistered]
  /// * [PushMessageContentDocument]
  /// * [PushMessageContentGame]
  /// * [PushMessageContentGameScore]
  /// * [PushMessageContentInvoice]
  /// * [PushMessageContentLocation]
  /// * [PushMessageContentPhoto]
  /// * [PushMessageContentPoll]
  /// * [PushMessageContentScreenshotTaken]
  /// * [PushMessageContentSticker]
  /// * [PushMessageContentText]
  /// * [PushMessageContentVideo]
  /// * [PushMessageContentVideoNote]
  /// * [PushMessageContentVoiceNote]
  /// * [PushMessageContentBasicGroupChatCreate]
  /// * [PushMessageContentChatAddMembers]
  /// * [PushMessageContentChatChangePhoto]
  /// * [PushMessageContentChatChangeTitle]
  /// * [PushMessageContentChatSetTheme]
  /// * [PushMessageContentChatDeleteMember]
  /// * [PushMessageContentChatJoinByLink]
  /// * [PushMessageContentChatJoinByRequest]
  /// * [PushMessageContentMessageForwards]
  /// * [PushMessageContentMediaAlbum]
  factory PushMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
      case PushMessageContentChatSetTheme.CONSTRUCTOR:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChatDeleteMember.CONSTRUCTOR:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.CONSTRUCTOR:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.CONSTRUCTOR:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentMessageForwards.CONSTRUCTOR:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.CONSTRUCTOR:
        return PushMessageContentMediaAlbum.fromJson(json);
      default:
        return const PushMessageContent();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PushMessageContent copyWith() => const PushMessageContent();

  static const CONSTRUCTOR = 'pushMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentHidden extends PushMessageContent {

  /// A general message with hidden content
  const PushMessageContentHidden({
    required this.isPinned,
  });
  
  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentHidden.fromJson(Map<String, dynamic> json) => PushMessageContentHidden(
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentHidden copyWith({
    bool? isPinned,
  }) => PushMessageContentHidden(
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentHidden';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentAnimation extends PushMessageContent {

  /// An animation message (GIF-style).
  const PushMessageContentAnimation({
    this.animation,
    required this.caption,
    required this.isPinned,
  });
  
  /// [animation] Message content; may be null 
  final Animation? animation;

  /// [caption] Animation caption 
  final String caption;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentAnimation.fromJson(Map<String, dynamic> json) => PushMessageContentAnimation(
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    caption: json['caption'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation?.toJson(),
      "caption": caption,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentAnimation copyWith({
    Animation? animation,
    String? caption,
    bool? isPinned,
  }) => PushMessageContentAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentAudio extends PushMessageContent {

  /// An audio message
  const PushMessageContentAudio({
    this.audio,
    required this.isPinned,
  });
  
  /// [audio] Message content; may be null 
  final Audio? audio;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentAudio.fromJson(Map<String, dynamic> json) => PushMessageContentAudio(
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentAudio copyWith({
    Audio? audio,
    bool? isPinned,
  }) => PushMessageContentAudio(
    audio: audio ?? this.audio,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentContact extends PushMessageContent {

  /// A message with a user contact
  const PushMessageContentContact({
    required this.name,
    required this.isPinned,
  });
  
  /// [name] Contact's name 
  final String name;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentContact.fromJson(Map<String, dynamic> json) => PushMessageContentContact(
    name: json['name'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentContact copyWith({
    String? name,
    bool? isPinned,
  }) => PushMessageContentContact(
    name: name ?? this.name,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentContactRegistered extends PushMessageContent {

  /// A contact has registered with Telegram
  const PushMessageContentContactRegistered();
  
  /// Parse from a json
  factory PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json) => const PushMessageContentContactRegistered();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PushMessageContentContactRegistered copyWith() => const PushMessageContentContactRegistered();

  static const CONSTRUCTOR = 'pushMessageContentContactRegistered';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentDocument extends PushMessageContent {

  /// A document message (a general file)
  const PushMessageContentDocument({
    this.document,
    required this.isPinned,
  });
  
  /// [document] Message content; may be null 
  final Document? document;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentDocument.fromJson(Map<String, dynamic> json) => PushMessageContentDocument(
    document: json['document'] == null ? null : Document.fromJson(json['document']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "document": document?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentDocument copyWith({
    Document? document,
    bool? isPinned,
  }) => PushMessageContentDocument(
    document: document ?? this.document,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentGame extends PushMessageContent {

  /// A message with a game
  const PushMessageContentGame({
    required this.title,
    required this.isPinned,
  });
  
  /// [title] Game title, empty for pinned game message 
  final String title;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentGame.fromJson(Map<String, dynamic> json) => PushMessageContentGame(
    title: json['title'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentGame copyWith({
    String? title,
    bool? isPinned,
  }) => PushMessageContentGame(
    title: title ?? this.title,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentGameScore extends PushMessageContent {

  /// A new high score was achieved in a game
  const PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });
  
  /// [title] Game title, empty for pinned message 
  final String title;

  /// [score] New score, 0 for pinned message 
  final int score;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentGameScore.fromJson(Map<String, dynamic> json) => PushMessageContentGameScore(
    title: json['title'],
    score: json['score'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "score": score,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentGameScore copyWith({
    String? title,
    int? score,
    bool? isPinned,
  }) => PushMessageContentGameScore(
    title: title ?? this.title,
    score: score ?? this.score,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentGameScore';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentInvoice extends PushMessageContent {

  /// A message with an invoice from a bot
  const PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });
  
  /// [price] Product price 
  final String price;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentInvoice.fromJson(Map<String, dynamic> json) => PushMessageContentInvoice(
    price: json['price'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "price": price,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentInvoice copyWith({
    String? price,
    bool? isPinned,
  }) => PushMessageContentInvoice(
    price: price ?? this.price,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentInvoice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentLocation extends PushMessageContent {

  /// A message with a location
  const PushMessageContentLocation({
    required this.isLive,
    required this.isPinned,
  });
  
  /// [isLive] True, if the location is live 
  final bool isLive;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentLocation.fromJson(Map<String, dynamic> json) => PushMessageContentLocation(
    isLive: json['is_live'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "is_live": isLive,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentLocation copyWith({
    bool? isLive,
    bool? isPinned,
  }) => PushMessageContentLocation(
    isLive: isLive ?? this.isLive,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentPhoto extends PushMessageContent {

  /// A photo message
  const PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });
  
  /// [photo] Message content; may be null 
  final Photo? photo;

  /// [caption] Photo caption 
  final String caption;

  /// [isSecret] True, if the photo is secret 
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPhoto.fromJson(Map<String, dynamic> json) => PushMessageContentPhoto(
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentPhoto copyWith({
    Photo? photo,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) => PushMessageContentPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    isSecret: isSecret ?? this.isSecret,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentPoll extends PushMessageContent {

  /// A message with a poll
  const PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });
  
  /// [question] Poll question 
  final String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode 
  final bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPoll.fromJson(Map<String, dynamic> json) => PushMessageContentPoll(
    question: json['question'],
    isRegular: json['is_regular'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "question": question,
      "is_regular": isRegular,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentPoll copyWith({
    String? question,
    bool? isRegular,
    bool? isPinned,
  }) => PushMessageContentPoll(
    question: question ?? this.question,
    isRegular: isRegular ?? this.isRegular,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentPoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentScreenshotTaken extends PushMessageContent {

  /// A screenshot of a message in the chat has been taken
  const PushMessageContentScreenshotTaken();
  
  /// Parse from a json
  factory PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json) => const PushMessageContentScreenshotTaken();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PushMessageContentScreenshotTaken copyWith() => const PushMessageContentScreenshotTaken();

  static const CONSTRUCTOR = 'pushMessageContentScreenshotTaken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentSticker extends PushMessageContent {

  /// A message with a sticker
  const PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });
  
  /// [sticker] Message content; may be null 
  final Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty 
  final String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentSticker.fromJson(Map<String, dynamic> json) => PushMessageContentSticker(
    sticker: json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
    emoji: json['emoji'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker?.toJson(),
      "emoji": emoji,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentSticker copyWith({
    Sticker? sticker,
    String? emoji,
    bool? isPinned,
  }) => PushMessageContentSticker(
    sticker: sticker ?? this.sticker,
    emoji: emoji ?? this.emoji,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentText extends PushMessageContent {

  /// A text message
  const PushMessageContentText({
    required this.text,
    required this.isPinned,
  });
  
  /// [text] Message text 
  final String text;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentText.fromJson(Map<String, dynamic> json) => PushMessageContentText(
    text: json['text'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentText copyWith({
    String? text,
    bool? isPinned,
  }) => PushMessageContentText(
    text: text ?? this.text,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentVideo extends PushMessageContent {

  /// A video message
  const PushMessageContentVideo({
    this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });
  
  /// [video] Message content; may be null 
  final Video? video;

  /// [caption] Video caption 
  final String caption;

  /// [isSecret] True, if the video is secret 
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVideo.fromJson(Map<String, dynamic> json) => PushMessageContentVideo(
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentVideo copyWith({
    Video? video,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) => PushMessageContentVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    isSecret: isSecret ?? this.isSecret,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentVideoNote extends PushMessageContent {

  /// A video note message
  const PushMessageContentVideoNote({
    this.videoNote,
    required this.isPinned,
  });
  
  /// [videoNote] Message content; may be null 
  final VideoNote? videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) => PushMessageContentVideoNote(
    videoNote: json['video_note'] == null ? null : VideoNote.fromJson(json['video_note']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentVideoNote copyWith({
    VideoNote? videoNote,
    bool? isPinned,
  }) => PushMessageContentVideoNote(
    videoNote: videoNote ?? this.videoNote,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentVoiceNote extends PushMessageContent {

  /// A voice note message
  const PushMessageContentVoiceNote({
    this.voiceNote,
    required this.isPinned,
  });
  
  /// [voiceNote] Message content; may be null 
  final VoiceNote? voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) => PushMessageContentVoiceNote(
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    isPinned: json['is_pinned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote?.toJson(),
      "is_pinned": isPinned,
    };
  }
  
  @override
  PushMessageContentVoiceNote copyWith({
    VoiceNote? voiceNote,
    bool? isPinned,
  }) => PushMessageContentVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    isPinned: isPinned ?? this.isPinned,
  );

  static const CONSTRUCTOR = 'pushMessageContentVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentBasicGroupChatCreate extends PushMessageContent {

  /// A newly created basic group
  const PushMessageContentBasicGroupChatCreate();
  
  /// Parse from a json
  factory PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => const PushMessageContentBasicGroupChatCreate();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PushMessageContentBasicGroupChatCreate copyWith() => const PushMessageContentBasicGroupChatCreate();

  static const CONSTRUCTOR = 'pushMessageContentBasicGroupChatCreate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatAddMembers extends PushMessageContent {

  /// New chat members were invited to a group
  const PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });
  
  /// [memberName] Name of the added member 
  final String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  final bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themselves
  final bool isReturned;
  
  /// Parse from a json
  factory PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) => PushMessageContentChatAddMembers(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isReturned: json['is_returned'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_returned": isReturned,
    };
  }
  
  @override
  PushMessageContentChatAddMembers copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isReturned,
  }) => PushMessageContentChatAddMembers(
    memberName: memberName ?? this.memberName,
    isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    isReturned: isReturned ?? this.isReturned,
  );

  static const CONSTRUCTOR = 'pushMessageContentChatAddMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatChangePhoto extends PushMessageContent {

  /// A chat photo was edited
  const PushMessageContentChatChangePhoto();
  
  /// Parse from a json
  factory PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json) => const PushMessageContentChatChangePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PushMessageContentChatChangePhoto copyWith() => const PushMessageContentChatChangePhoto();

  static const CONSTRUCTOR = 'pushMessageContentChatChangePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatChangeTitle extends PushMessageContent {

  /// A chat title was edited
  const PushMessageContentChatChangeTitle({
    required this.title,
  });
  
  /// [title] New chat title
  final String title;
  
  /// Parse from a json
  factory PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) => PushMessageContentChatChangeTitle(
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
  PushMessageContentChatChangeTitle copyWith({
    String? title,
  }) => PushMessageContentChatChangeTitle(
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'pushMessageContentChatChangeTitle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatSetTheme extends PushMessageContent {

  /// A chat theme was edited
  const PushMessageContentChatSetTheme({
    required this.themeName,
  });
  
  /// [themeName] If non-empty, name of a new theme, set for the chat. Otherwise chat theme was reset to the default one
  final String themeName;
  
  /// Parse from a json
  factory PushMessageContentChatSetTheme.fromJson(Map<String, dynamic> json) => PushMessageContentChatSetTheme(
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
  PushMessageContentChatSetTheme copyWith({
    String? themeName,
  }) => PushMessageContentChatSetTheme(
    themeName: themeName ?? this.themeName,
  );

  static const CONSTRUCTOR = 'pushMessageContentChatSetTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatDeleteMember extends PushMessageContent {

  /// A chat member was deleted
  const PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });
  
  /// [memberName] Name of the deleted member 
  final String memberName;

  /// [isCurrentUser] True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// [isLeft] True, if the user has left the group themselves
  final bool isLeft;
  
  /// Parse from a json
  factory PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) => PushMessageContentChatDeleteMember(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isLeft: json['is_left'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_left": isLeft,
    };
  }
  
  @override
  PushMessageContentChatDeleteMember copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isLeft,
  }) => PushMessageContentChatDeleteMember(
    memberName: memberName ?? this.memberName,
    isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    isLeft: isLeft ?? this.isLeft,
  );

  static const CONSTRUCTOR = 'pushMessageContentChatDeleteMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatJoinByLink extends PushMessageContent {

  /// A new member joined the chat via an invite link
  const PushMessageContentChatJoinByLink();
  
  /// Parse from a json
  factory PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json) => const PushMessageContentChatJoinByLink();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PushMessageContentChatJoinByLink copyWith() => const PushMessageContentChatJoinByLink();

  static const CONSTRUCTOR = 'pushMessageContentChatJoinByLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentChatJoinByRequest extends PushMessageContent {

  /// A new member was accepted to the chat by an administrator
  const PushMessageContentChatJoinByRequest();
  
  /// Parse from a json
  factory PushMessageContentChatJoinByRequest.fromJson(Map<String, dynamic> json) => const PushMessageContentChatJoinByRequest();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PushMessageContentChatJoinByRequest copyWith() => const PushMessageContentChatJoinByRequest();

  static const CONSTRUCTOR = 'pushMessageContentChatJoinByRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentMessageForwards extends PushMessageContent {

  /// A forwarded messages
  const PushMessageContentMessageForwards({
    required this.totalCount,
  });
  
  /// [totalCount] Number of forwarded messages
  final int totalCount;
  
  /// Parse from a json
  factory PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) => PushMessageContentMessageForwards(
    totalCount: json['total_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
    };
  }
  
  @override
  PushMessageContentMessageForwards copyWith({
    int? totalCount,
  }) => PushMessageContentMessageForwards(
    totalCount: totalCount ?? this.totalCount,
  );

  static const CONSTRUCTOR = 'pushMessageContentMessageForwards';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PushMessageContentMediaAlbum extends PushMessageContent {

  /// A media album
  const PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });
  
  /// [totalCount] Number of messages in the album 
  final int totalCount;

  /// [hasPhotos] True, if the album has at least one photo 
  final bool hasPhotos;

  /// [hasVideos] True, if the album has at least one video
  final bool hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  final bool hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  final bool hasDocuments;
  
  /// Parse from a json
  factory PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) => PushMessageContentMediaAlbum(
    totalCount: json['total_count'],
    hasPhotos: json['has_photos'],
    hasVideos: json['has_videos'],
    hasAudios: json['has_audios'],
    hasDocuments: json['has_documents'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "has_photos": hasPhotos,
      "has_videos": hasVideos,
      "has_audios": hasAudios,
      "has_documents": hasDocuments,
    };
  }
  
  @override
  PushMessageContentMediaAlbum copyWith({
    int? totalCount,
    bool? hasPhotos,
    bool? hasVideos,
    bool? hasAudios,
    bool? hasDocuments,
  }) => PushMessageContentMediaAlbum(
    totalCount: totalCount ?? this.totalCount,
    hasPhotos: hasPhotos ?? this.hasPhotos,
    hasVideos: hasVideos ?? this.hasVideos,
    hasAudios: hasAudios ?? this.hasAudios,
    hasDocuments: hasDocuments ?? this.hasDocuments,
  );

  static const CONSTRUCTOR = 'pushMessageContentMediaAlbum';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
