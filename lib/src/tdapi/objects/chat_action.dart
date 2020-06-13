part of '../tdapi.dart';

class ChatAction extends TdObject {
  

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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'chatAction';
}

class ChatActionTyping extends ChatAction {
  

  /// The user is typing a message
  ChatActionTyping();

  /// Parse from a json
  ChatActionTyping.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionTyping';
}

class ChatActionRecordingVideo extends ChatAction {
  

  /// The user is recording a video
  ChatActionRecordingVideo();

  /// Parse from a json
  ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionRecordingVideo';
}

class ChatActionUploadingVideo extends ChatAction {
  int progress;

  /// The user is uploading a video. 
  /// [progress] Upload progress, as a percentage
  ChatActionUploadingVideo({this.progress});

  /// Parse from a json
  ChatActionUploadingVideo.fromJson(Map<String, dynamic> json)  {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingVideo';
}

class ChatActionRecordingVoiceNote extends ChatAction {
  

  /// The user is recording a voice note
  ChatActionRecordingVoiceNote();

  /// Parse from a json
  ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionRecordingVoiceNote';
}

class ChatActionUploadingVoiceNote extends ChatAction {
  int progress;

  /// The user is uploading a voice note. 
  /// [progress] Upload progress, as a percentage
  ChatActionUploadingVoiceNote({this.progress});

  /// Parse from a json
  ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json)  {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingVoiceNote';
}

class ChatActionUploadingPhoto extends ChatAction {
  int progress;

  /// The user is uploading a photo. 
  /// [progress] Upload progress, as a percentage
  ChatActionUploadingPhoto({this.progress});

  /// Parse from a json
  ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json)  {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingPhoto';
}

class ChatActionUploadingDocument extends ChatAction {
  int progress;

  /// The user is uploading a document. 
  /// [progress] Upload progress, as a percentage
  ChatActionUploadingDocument({this.progress});

  /// Parse from a json
  ChatActionUploadingDocument.fromJson(Map<String, dynamic> json)  {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingDocument';
}

class ChatActionChoosingLocation extends ChatAction {
  

  /// The user is picking a location or venue to send
  ChatActionChoosingLocation();

  /// Parse from a json
  ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionChoosingLocation';
}

class ChatActionChoosingContact extends ChatAction {
  

  /// The user is picking a contact to send
  ChatActionChoosingContact();

  /// Parse from a json
  ChatActionChoosingContact.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionChoosingContact';
}

class ChatActionStartPlayingGame extends ChatAction {
  

  /// The user has started to play a game
  ChatActionStartPlayingGame();

  /// Parse from a json
  ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionStartPlayingGame';
}

class ChatActionRecordingVideoNote extends ChatAction {
  

  /// The user is recording a video note
  ChatActionRecordingVideoNote();

  /// Parse from a json
  ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionRecordingVideoNote';
}

class ChatActionUploadingVideoNote extends ChatAction {
  int progress;

  /// The user is uploading a video note. 
  /// [progress] Upload progress, as a percentage
  ChatActionUploadingVideoNote({this.progress});

  /// Parse from a json
  ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json)  {
    this.progress = json['progress'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "progress": this.progress,
    };
  }

  static const CONSTRUCTOR = 'chatActionUploadingVideoNote';
}

class ChatActionCancel extends ChatAction {
  

  /// The user has cancelled the previous action
  ChatActionCancel();

  /// Parse from a json
  ChatActionCancel.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatActionCancel';
}