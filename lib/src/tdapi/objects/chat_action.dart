part of '../tdapi.dart';

class ChatAction implements TLObject {
  /// Describes the different types of activity in a chat
  ChatAction();

  /// a ChatAction return type can be :
  /// * ChatActionTyping
  /// * ChatActionRecordingVideo
  /// * ChatActionUploadingVideo
  /// * ChatActionRecordingVoiceNote
  /// * ChatActionUploadingVoiceNote
  /// * ChatActionUploadingPhoto
  /// * ChatActionUploadingDocument
  /// * ChatActionChoosingLocation
  /// * ChatActionChoosingContact
  /// * ChatActionStartPlayingGame
  /// * ChatActionRecordingVideoNote
  /// * ChatActionUploadingVideoNote
  /// * ChatActionCancel
  factory ChatAction.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
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
      case ChatActionCancel.CONSTRUCTOR:
        return ChatActionCancel.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "chatAction";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionTyping implements ChatAction {
  /// The user is typing a message.
  ///
  ChatActionTyping();

  /// Parse from a json
  ChatActionTyping.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionTyping";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionRecordingVideo implements ChatAction {
  /// The user is recording a video.
  ///
  ChatActionRecordingVideo();

  /// Parse from a json
  ChatActionRecordingVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionRecordingVideo";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingVideo implements ChatAction {
  int progress;

  /// The user is uploading a video.
  ///[progress] Upload progress, as a percentage
  ChatActionUploadingVideo({this.progress});

  /// Parse from a json
  ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "progress": this.progress};
  }

  static const String CONSTRUCTOR = "chatActionUploadingVideo";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionRecordingVoiceNote implements ChatAction {
  /// The user is recording a voice note.
  ///
  ChatActionRecordingVoiceNote();

  /// Parse from a json
  ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionRecordingVoiceNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingVoiceNote implements ChatAction {
  int progress;

  /// The user is uploading a voice note.
  ///[progress] Upload progress, as a percentage
  ChatActionUploadingVoiceNote({this.progress});

  /// Parse from a json
  ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "progress": this.progress};
  }

  static const String CONSTRUCTOR = "chatActionUploadingVoiceNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingPhoto implements ChatAction {
  int progress;

  /// The user is uploading a photo.
  ///[progress] Upload progress, as a percentage
  ChatActionUploadingPhoto({this.progress});

  /// Parse from a json
  ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "progress": this.progress};
  }

  static const String CONSTRUCTOR = "chatActionUploadingPhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingDocument implements ChatAction {
  int progress;

  /// The user is uploading a document.
  ///[progress] Upload progress, as a percentage
  ChatActionUploadingDocument({this.progress});

  /// Parse from a json
  ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "progress": this.progress};
  }

  static const String CONSTRUCTOR = "chatActionUploadingDocument";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionChoosingLocation implements ChatAction {
  /// The user is picking a location or venue to send.
  ///
  ChatActionChoosingLocation();

  /// Parse from a json
  ChatActionChoosingLocation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionChoosingLocation";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionChoosingContact implements ChatAction {
  /// The user is picking a contact to send.
  ///
  ChatActionChoosingContact();

  /// Parse from a json
  ChatActionChoosingContact.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionChoosingContact";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionStartPlayingGame implements ChatAction {
  /// The user has started to play a game.
  ///
  ChatActionStartPlayingGame();

  /// Parse from a json
  ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionStartPlayingGame";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionRecordingVideoNote implements ChatAction {
  /// The user is recording a video note.
  ///
  ChatActionRecordingVideoNote();

  /// Parse from a json
  ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionRecordingVideoNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionUploadingVideoNote implements ChatAction {
  int progress;

  /// The user is uploading a video note.
  ///[progress] Upload progress, as a percentage
  ChatActionUploadingVideoNote({this.progress});

  /// Parse from a json
  ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "progress": this.progress};
  }

  static const String CONSTRUCTOR = "chatActionUploadingVideoNote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatActionCancel implements ChatAction {
  /// The user has cancelled the previous action.
  ///
  ChatActionCancel();

  /// Parse from a json
  ChatActionCancel.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatActionCancel";

  @override
  String getConstructor() => CONSTRUCTOR;
}
