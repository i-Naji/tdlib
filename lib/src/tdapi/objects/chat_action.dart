part of '../tdapi.dart';

class ChatAction extends TdObject {

  /// Describes the different types of activity in a chat
  const ChatAction();
  
  /// a ChatAction return type can be :
  /// * [ChatActionTyping]
  /// * [ChatActionRecordingVideo]
  /// * [ChatActionUploadingVideo]
  /// * [ChatActionRecordingVoiceNote]
  /// * [ChatActionUploadingVoiceNote]
  /// * [ChatActionUploadingPhoto]
  /// * [ChatActionUploadingDocument]
  /// * [ChatActionChoosingSticker]
  /// * [ChatActionChoosingLocation]
  /// * [ChatActionChoosingContact]
  /// * [ChatActionStartPlayingGame]
  /// * [ChatActionRecordingVideoNote]
  /// * [ChatActionUploadingVideoNote]
  /// * [ChatActionWatchingAnimations]
  /// * [ChatActionCancel]
  factory ChatAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatActionTyping.CONSTRUCTOR:
        return ChatActionTyping.fromJson(json);
      case ChatActionRecordingVideo.CONSTRUCTOR:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionUploadingVideo.CONSTRUCTOR:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionRecordingVoiceNote.CONSTRUCTOR:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionUploadingVoiceNote.CONSTRUCTOR:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionUploadingPhoto.CONSTRUCTOR:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingDocument.CONSTRUCTOR:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionChoosingSticker.CONSTRUCTOR:
        return ChatActionChoosingSticker.fromJson(json);
      case ChatActionChoosingLocation.CONSTRUCTOR:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingContact.CONSTRUCTOR:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionStartPlayingGame.CONSTRUCTOR:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionRecordingVideoNote.CONSTRUCTOR:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionUploadingVideoNote.CONSTRUCTOR:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionWatchingAnimations.CONSTRUCTOR:
        return ChatActionWatchingAnimations.fromJson(json);
      case ChatActionCancel.CONSTRUCTOR:
        return ChatActionCancel.fromJson(json);
      default:
        return const ChatAction();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatAction copyWith() => const ChatAction();

  static const CONSTRUCTOR = 'chatAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionTyping extends ChatAction {

  /// The user is typing a message
  const ChatActionTyping();
  
  /// Parse from a json
  factory ChatActionTyping.fromJson(Map<String, dynamic> json) => const ChatActionTyping();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionTyping copyWith() => const ChatActionTyping();

  static const CONSTRUCTOR = 'chatActionTyping';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionRecordingVideo extends ChatAction {

  /// The user is recording a video
  const ChatActionRecordingVideo();
  
  /// Parse from a json
  factory ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionRecordingVideo copyWith() => const ChatActionRecordingVideo();

  static const CONSTRUCTOR = 'chatActionRecordingVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionUploadingVideo extends ChatAction {

  /// The user is uploading a video
  const ChatActionUploadingVideo({
    required this.progress,
  });
  
  /// [progress] Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideo(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingVideo copyWith({
    int? progress,
  }) => ChatActionUploadingVideo(
    progress: progress ?? this.progress,
  );

  static const CONSTRUCTOR = 'chatActionUploadingVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionRecordingVoiceNote extends ChatAction {

  /// The user is recording a voice note
  const ChatActionRecordingVoiceNote();
  
  /// Parse from a json
  factory ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVoiceNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionRecordingVoiceNote copyWith() => const ChatActionRecordingVoiceNote();

  static const CONSTRUCTOR = 'chatActionRecordingVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionUploadingVoiceNote extends ChatAction {

  /// The user is uploading a voice note
  const ChatActionUploadingVoiceNote({
    required this.progress,
  });
  
  /// [progress] Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVoiceNote(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingVoiceNote copyWith({
    int? progress,
  }) => ChatActionUploadingVoiceNote(
    progress: progress ?? this.progress,
  );

  static const CONSTRUCTOR = 'chatActionUploadingVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionUploadingPhoto extends ChatAction {

  /// The user is uploading a photo
  const ChatActionUploadingPhoto({
    required this.progress,
  });
  
  /// [progress] Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) => ChatActionUploadingPhoto(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingPhoto copyWith({
    int? progress,
  }) => ChatActionUploadingPhoto(
    progress: progress ?? this.progress,
  );

  static const CONSTRUCTOR = 'chatActionUploadingPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionUploadingDocument extends ChatAction {

  /// The user is uploading a document
  const ChatActionUploadingDocument({
    required this.progress,
  });
  
  /// [progress] Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) => ChatActionUploadingDocument(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingDocument copyWith({
    int? progress,
  }) => ChatActionUploadingDocument(
    progress: progress ?? this.progress,
  );

  static const CONSTRUCTOR = 'chatActionUploadingDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionChoosingSticker extends ChatAction {

  /// The user is picking a sticker to send
  const ChatActionChoosingSticker();
  
  /// Parse from a json
  factory ChatActionChoosingSticker.fromJson(Map<String, dynamic> json) => const ChatActionChoosingSticker();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionChoosingSticker copyWith() => const ChatActionChoosingSticker();

  static const CONSTRUCTOR = 'chatActionChoosingSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionChoosingLocation extends ChatAction {

  /// The user is picking a location or venue to send
  const ChatActionChoosingLocation();
  
  /// Parse from a json
  factory ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) => const ChatActionChoosingLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionChoosingLocation copyWith() => const ChatActionChoosingLocation();

  static const CONSTRUCTOR = 'chatActionChoosingLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionChoosingContact extends ChatAction {

  /// The user is picking a contact to send
  const ChatActionChoosingContact();
  
  /// Parse from a json
  factory ChatActionChoosingContact.fromJson(Map<String, dynamic> json) => const ChatActionChoosingContact();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionChoosingContact copyWith() => const ChatActionChoosingContact();

  static const CONSTRUCTOR = 'chatActionChoosingContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionStartPlayingGame extends ChatAction {

  /// The user has started to play a game
  const ChatActionStartPlayingGame();
  
  /// Parse from a json
  factory ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) => const ChatActionStartPlayingGame();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionStartPlayingGame copyWith() => const ChatActionStartPlayingGame();

  static const CONSTRUCTOR = 'chatActionStartPlayingGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionRecordingVideoNote extends ChatAction {

  /// The user is recording a video note
  const ChatActionRecordingVideoNote();
  
  /// Parse from a json
  factory ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionRecordingVideoNote copyWith() => const ChatActionRecordingVideoNote();

  static const CONSTRUCTOR = 'chatActionRecordingVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionUploadingVideoNote extends ChatAction {

  /// The user is uploading a video note
  const ChatActionUploadingVideoNote({
    required this.progress,
  });
  
  /// [progress] Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideoNote(
    progress: json['progress'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "progress": progress,
    };
  }
  
  @override
  ChatActionUploadingVideoNote copyWith({
    int? progress,
  }) => ChatActionUploadingVideoNote(
    progress: progress ?? this.progress,
  );

  static const CONSTRUCTOR = 'chatActionUploadingVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionWatchingAnimations extends ChatAction {

  /// The user is watching animations sent by the other party by clicking on an animated emoji
  const ChatActionWatchingAnimations({
    required this.emoji,
  });
  
  /// [emoji] The animated emoji
  final String emoji;
  
  /// Parse from a json
  factory ChatActionWatchingAnimations.fromJson(Map<String, dynamic> json) => ChatActionWatchingAnimations(
    emoji: json['emoji'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
    };
  }
  
  @override
  ChatActionWatchingAnimations copyWith({
    String? emoji,
  }) => ChatActionWatchingAnimations(
    emoji: emoji ?? this.emoji,
  );

  static const CONSTRUCTOR = 'chatActionWatchingAnimations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatActionCancel extends ChatAction {

  /// The user has canceled the previous action
  const ChatActionCancel();
  
  /// Parse from a json
  factory ChatActionCancel.fromJson(Map<String, dynamic> json) => const ChatActionCancel();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ChatActionCancel copyWith() => const ChatActionCancel();

  static const CONSTRUCTOR = 'chatActionCancel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
