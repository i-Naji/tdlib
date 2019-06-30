part of '../tdapi.dart';

class FileType implements TLObject {
  /// Represents the type of a file
  FileType();

  /// a FileType return type can be :
  /// * FileTypeSecret
  /// * FileTypeUnknown
  /// * FileTypeVoiceNote
  /// * FileTypeWallpaper
  /// * FileTypeSecure
  /// * FileTypeSecretThumbnail
  /// * FileTypeAnimation
  /// * FileTypeThumbnail
  /// * FileTypeNone
  /// * FileTypeSticker
  /// * FileTypeAudio
  /// * FileTypeProfilePhoto
  /// * FileTypeVideoNote
  /// * FileTypeDocument
  /// * FileTypeVideo
  /// * FileTypePhoto
  factory FileType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case FileTypeSecret.CONSTRUCTOR:
        return FileTypeSecret.fromJson(json);
      case FileTypeUnknown.CONSTRUCTOR:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVoiceNote.CONSTRUCTOR:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.CONSTRUCTOR:
        return FileTypeWallpaper.fromJson(json);
      case FileTypeSecure.CONSTRUCTOR:
        return FileTypeSecure.fromJson(json);
      case FileTypeSecretThumbnail.CONSTRUCTOR:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeAnimation.CONSTRUCTOR:
        return FileTypeAnimation.fromJson(json);
      case FileTypeThumbnail.CONSTRUCTOR:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeNone.CONSTRUCTOR:
        return FileTypeNone.fromJson(json);
      case FileTypeSticker.CONSTRUCTOR:
        return FileTypeSticker.fromJson(json);
      case FileTypeAudio.CONSTRUCTOR:
        return FileTypeAudio.fromJson(json);
      case FileTypeProfilePhoto.CONSTRUCTOR:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeVideoNote.CONSTRUCTOR:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeDocument.CONSTRUCTOR:
        return FileTypeDocument.fromJson(json);
      case FileTypeVideo.CONSTRUCTOR:
        return FileTypeVideo.fromJson(json);
      case FileTypePhoto.CONSTRUCTOR:
        return FileTypePhoto.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'fileType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeNone implements FileType {
  /// The data is not a file.
  ///
  FileTypeNone();

  /// Parse from a json
  FileTypeNone.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeAnimation implements FileType {
  /// The file is an animation.
  ///
  FileTypeAnimation();

  /// Parse from a json
  FileTypeAnimation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeAudio implements FileType {
  /// The file is an audio file.
  ///
  FileTypeAudio();

  /// Parse from a json
  FileTypeAudio.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeDocument implements FileType {
  /// The file is a document.
  ///
  FileTypeDocument();

  /// Parse from a json
  FileTypeDocument.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypePhoto implements FileType {
  /// The file is a photo.
  ///
  FileTypePhoto();

  /// Parse from a json
  FileTypePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeProfilePhoto implements FileType {
  /// The file is a profile photo.
  ///
  FileTypeProfilePhoto();

  /// Parse from a json
  FileTypeProfilePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecret implements FileType {
  /// The file was sent to a secret chat (the file type is not known to the server).
  ///
  FileTypeSecret();

  /// Parse from a json
  FileTypeSecret.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeSecret';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecretThumbnail implements FileType {
  /// The file is a thumbnail of a file from a secret chat.
  ///
  FileTypeSecretThumbnail();

  /// Parse from a json
  FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeSecretThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSecure implements FileType {
  /// The file is a file from Secure storage used for storing Telegram Passport files.
  ///
  FileTypeSecure();

  /// Parse from a json
  FileTypeSecure.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeSecure';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeSticker implements FileType {
  /// The file is a sticker.
  ///
  FileTypeSticker();

  /// Parse from a json
  FileTypeSticker.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeThumbnail implements FileType {
  /// The file is a thumbnail of another file.
  ///
  FileTypeThumbnail();

  /// Parse from a json
  FileTypeThumbnail.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeUnknown implements FileType {
  /// The file type is not yet known.
  ///
  FileTypeUnknown();

  /// Parse from a json
  FileTypeUnknown.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideo implements FileType {
  /// The file is a video.
  ///
  FileTypeVideo();

  /// Parse from a json
  FileTypeVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVideoNote implements FileType {
  /// The file is a video note.
  ///
  FileTypeVideoNote();

  /// Parse from a json
  FileTypeVideoNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeVoiceNote implements FileType {
  /// The file is a voice note.
  ///
  FileTypeVoiceNote();

  /// Parse from a json
  FileTypeVoiceNote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class FileTypeWallpaper implements FileType {
  /// The file is a wallpaper.
  ///
  FileTypeWallpaper();

  /// Parse from a json
  FileTypeWallpaper.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'fileTypeWallpaper';

  @override
  String getConstructor() => CONSTRUCTOR;
}
