part of '../tdapi.dart';

class FileType extends TdObject {

  /// Represents the type of a file
  const FileType();
  
  /// a FileType return type can be :
  /// * [FileTypeNone]
  /// * [FileTypeAnimation]
  /// * [FileTypeAudio]
  /// * [FileTypeDocument]
  /// * [FileTypePhoto]
  /// * [FileTypeProfilePhoto]
  /// * [FileTypeSecret]
  /// * [FileTypeSecretThumbnail]
  /// * [FileTypeSecure]
  /// * [FileTypeSticker]
  /// * [FileTypeThumbnail]
  /// * [FileTypeUnknown]
  /// * [FileTypeVideo]
  /// * [FileTypeVideoNote]
  /// * [FileTypeVoiceNote]
  /// * [FileTypeWallpaper]
  factory FileType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case FileTypeNone.CONSTRUCTOR:
        return FileTypeNone.fromJson(json);
      case FileTypeAnimation.CONSTRUCTOR:
        return FileTypeAnimation.fromJson(json);
      case FileTypeAudio.CONSTRUCTOR:
        return FileTypeAudio.fromJson(json);
      case FileTypeDocument.CONSTRUCTOR:
        return FileTypeDocument.fromJson(json);
      case FileTypePhoto.CONSTRUCTOR:
        return FileTypePhoto.fromJson(json);
      case FileTypeProfilePhoto.CONSTRUCTOR:
        return FileTypeProfilePhoto.fromJson(json);
      case FileTypeSecret.CONSTRUCTOR:
        return FileTypeSecret.fromJson(json);
      case FileTypeSecretThumbnail.CONSTRUCTOR:
        return FileTypeSecretThumbnail.fromJson(json);
      case FileTypeSecure.CONSTRUCTOR:
        return FileTypeSecure.fromJson(json);
      case FileTypeSticker.CONSTRUCTOR:
        return FileTypeSticker.fromJson(json);
      case FileTypeThumbnail.CONSTRUCTOR:
        return FileTypeThumbnail.fromJson(json);
      case FileTypeUnknown.CONSTRUCTOR:
        return FileTypeUnknown.fromJson(json);
      case FileTypeVideo.CONSTRUCTOR:
        return FileTypeVideo.fromJson(json);
      case FileTypeVideoNote.CONSTRUCTOR:
        return FileTypeVideoNote.fromJson(json);
      case FileTypeVoiceNote.CONSTRUCTOR:
        return FileTypeVoiceNote.fromJson(json);
      case FileTypeWallpaper.CONSTRUCTOR:
        return FileTypeWallpaper.fromJson(json);
      default:
        return const FileType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  FileType copyWith() => const FileType();

  static const CONSTRUCTOR = 'fileType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeNone extends FileType {

  /// The data is not a file
  const FileTypeNone();
  
  /// Parse from a json
  factory FileTypeNone.fromJson(Map<String, dynamic> json) => const FileTypeNone();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeNone copyWith() => const FileTypeNone();

  static const CONSTRUCTOR = 'fileTypeNone';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeAnimation extends FileType {

  /// The file is an animation
  const FileTypeAnimation();
  
  /// Parse from a json
  factory FileTypeAnimation.fromJson(Map<String, dynamic> json) => const FileTypeAnimation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeAnimation copyWith() => const FileTypeAnimation();

  static const CONSTRUCTOR = 'fileTypeAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeAudio extends FileType {

  /// The file is an audio file
  const FileTypeAudio();
  
  /// Parse from a json
  factory FileTypeAudio.fromJson(Map<String, dynamic> json) => const FileTypeAudio();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeAudio copyWith() => const FileTypeAudio();

  static const CONSTRUCTOR = 'fileTypeAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeDocument extends FileType {

  /// The file is a document
  const FileTypeDocument();
  
  /// Parse from a json
  factory FileTypeDocument.fromJson(Map<String, dynamic> json) => const FileTypeDocument();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeDocument copyWith() => const FileTypeDocument();

  static const CONSTRUCTOR = 'fileTypeDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypePhoto extends FileType {

  /// The file is a photo
  const FileTypePhoto();
  
  /// Parse from a json
  factory FileTypePhoto.fromJson(Map<String, dynamic> json) => const FileTypePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypePhoto copyWith() => const FileTypePhoto();

  static const CONSTRUCTOR = 'fileTypePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeProfilePhoto extends FileType {

  /// The file is a profile photo
  const FileTypeProfilePhoto();
  
  /// Parse from a json
  factory FileTypeProfilePhoto.fromJson(Map<String, dynamic> json) => const FileTypeProfilePhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeProfilePhoto copyWith() => const FileTypeProfilePhoto();

  static const CONSTRUCTOR = 'fileTypeProfilePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeSecret extends FileType {

  /// The file was sent to a secret chat (the file type is not known to the server)
  const FileTypeSecret();
  
  /// Parse from a json
  factory FileTypeSecret.fromJson(Map<String, dynamic> json) => const FileTypeSecret();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeSecret copyWith() => const FileTypeSecret();

  static const CONSTRUCTOR = 'fileTypeSecret';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeSecretThumbnail extends FileType {

  /// The file is a thumbnail of a file from a secret chat
  const FileTypeSecretThumbnail();
  
  /// Parse from a json
  factory FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json) => const FileTypeSecretThumbnail();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeSecretThumbnail copyWith() => const FileTypeSecretThumbnail();

  static const CONSTRUCTOR = 'fileTypeSecretThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeSecure extends FileType {

  /// The file is a file from Secure storage used for storing Telegram Passport files
  const FileTypeSecure();
  
  /// Parse from a json
  factory FileTypeSecure.fromJson(Map<String, dynamic> json) => const FileTypeSecure();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeSecure copyWith() => const FileTypeSecure();

  static const CONSTRUCTOR = 'fileTypeSecure';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeSticker extends FileType {

  /// The file is a sticker
  const FileTypeSticker();
  
  /// Parse from a json
  factory FileTypeSticker.fromJson(Map<String, dynamic> json) => const FileTypeSticker();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeSticker copyWith() => const FileTypeSticker();

  static const CONSTRUCTOR = 'fileTypeSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeThumbnail extends FileType {

  /// The file is a thumbnail of another file
  const FileTypeThumbnail();
  
  /// Parse from a json
  factory FileTypeThumbnail.fromJson(Map<String, dynamic> json) => const FileTypeThumbnail();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeThumbnail copyWith() => const FileTypeThumbnail();

  static const CONSTRUCTOR = 'fileTypeThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeUnknown extends FileType {

  /// The file type is not yet known
  const FileTypeUnknown();
  
  /// Parse from a json
  factory FileTypeUnknown.fromJson(Map<String, dynamic> json) => const FileTypeUnknown();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeUnknown copyWith() => const FileTypeUnknown();

  static const CONSTRUCTOR = 'fileTypeUnknown';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeVideo extends FileType {

  /// The file is a video
  const FileTypeVideo();
  
  /// Parse from a json
  factory FileTypeVideo.fromJson(Map<String, dynamic> json) => const FileTypeVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeVideo copyWith() => const FileTypeVideo();

  static const CONSTRUCTOR = 'fileTypeVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeVideoNote extends FileType {

  /// The file is a video note
  const FileTypeVideoNote();
  
  /// Parse from a json
  factory FileTypeVideoNote.fromJson(Map<String, dynamic> json) => const FileTypeVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeVideoNote copyWith() => const FileTypeVideoNote();

  static const CONSTRUCTOR = 'fileTypeVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeVoiceNote extends FileType {

  /// The file is a voice note
  const FileTypeVoiceNote();
  
  /// Parse from a json
  factory FileTypeVoiceNote.fromJson(Map<String, dynamic> json) => const FileTypeVoiceNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeVoiceNote copyWith() => const FileTypeVoiceNote();

  static const CONSTRUCTOR = 'fileTypeVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class FileTypeWallpaper extends FileType {

  /// The file is a wallpaper or a background pattern
  const FileTypeWallpaper();
  
  /// Parse from a json
  factory FileTypeWallpaper.fromJson(Map<String, dynamic> json) => const FileTypeWallpaper();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  FileTypeWallpaper copyWith() => const FileTypeWallpaper();

  static const CONSTRUCTOR = 'fileTypeWallpaper';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
