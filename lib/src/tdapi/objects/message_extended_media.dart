part of '../tdapi.dart';

class MessageExtendedMedia extends TdObject {
  /// Describes a media, which is attached to an invoice
  const MessageExtendedMedia();

  /// a MessageExtendedMedia return type can be :
  /// * [MessageExtendedMediaPreview]
  /// * [MessageExtendedMediaPhoto]
  /// * [MessageExtendedMediaVideo]
  /// * [MessageExtendedMediaUnsupported]
  factory MessageExtendedMedia.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageExtendedMediaPreview.CONSTRUCTOR:
        return MessageExtendedMediaPreview.fromJson(json);
      case MessageExtendedMediaPhoto.CONSTRUCTOR:
        return MessageExtendedMediaPhoto.fromJson(json);
      case MessageExtendedMediaVideo.CONSTRUCTOR:
        return MessageExtendedMediaVideo.fromJson(json);
      case MessageExtendedMediaUnsupported.CONSTRUCTOR:
        return MessageExtendedMediaUnsupported.fromJson(json);
      default:
        return const MessageExtendedMedia();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  MessageExtendedMedia copyWith() => const MessageExtendedMedia();

  static const CONSTRUCTOR = 'messageExtendedMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExtendedMediaPreview extends MessageExtendedMedia {
  /// The media is hidden until the invoice is paid
  const MessageExtendedMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
    required this.caption,
  });

  /// [width] Media width; 0 if unknown
  final int width;

  /// [height] Media height; 0 if unknown
  final int height;

  /// [duration] Media duration; 0 if unknown
  final int duration;

  /// [minithumbnail] Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [caption] Media caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaPreview.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaPreview(
        width: json['width'],
        height: json['height'],
        duration: json['duration'],
        minithumbnail: json['minithumbnail'] == null
            ? null
            : Minithumbnail.fromJson(json['minithumbnail']),
        caption: FormattedText.fromJson(json['caption']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "width": width,
      "height": height,
      "duration": duration,
      "minithumbnail": minithumbnail?.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  MessageExtendedMediaPreview copyWith({
    int? width,
    int? height,
    int? duration,
    Minithumbnail? minithumbnail,
    FormattedText? caption,
  }) =>
      MessageExtendedMediaPreview(
        width: width ?? this.width,
        height: height ?? this.height,
        duration: duration ?? this.duration,
        minithumbnail: minithumbnail ?? this.minithumbnail,
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'messageExtendedMediaPreview';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExtendedMediaPhoto extends MessageExtendedMedia {
  /// The media is a photo
  const MessageExtendedMediaPhoto({
    required this.photo,
    required this.caption,
  });

  /// [photo] The photo
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaPhoto.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaPhoto(
        photo: Photo.fromJson(json['photo']),
        caption: FormattedText.fromJson(json['caption']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  MessageExtendedMediaPhoto copyWith({
    Photo? photo,
    FormattedText? caption,
  }) =>
      MessageExtendedMediaPhoto(
        photo: photo ?? this.photo,
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'messageExtendedMediaPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExtendedMediaVideo extends MessageExtendedMedia {
  /// The media is a video
  const MessageExtendedMediaVideo({
    required this.video,
    required this.caption,
  });

  /// [video] The video
  final Video video;

  /// [caption] Photo caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaVideo.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaVideo(
        video: Video.fromJson(json['video']),
        caption: FormattedText.fromJson(json['caption']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "video": video.toJson(),
      "caption": caption.toJson(),
    };
  }

  @override
  MessageExtendedMediaVideo copyWith({
    Video? video,
    FormattedText? caption,
  }) =>
      MessageExtendedMediaVideo(
        video: video ?? this.video,
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'messageExtendedMediaVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageExtendedMediaUnsupported extends MessageExtendedMedia {
  /// The media is unsupported
  const MessageExtendedMediaUnsupported({
    required this.caption,
  });

  /// [caption] Media caption
  final FormattedText caption;

  /// Parse from a json
  factory MessageExtendedMediaUnsupported.fromJson(Map<String, dynamic> json) =>
      MessageExtendedMediaUnsupported(
        caption: FormattedText.fromJson(json['caption']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "caption": caption.toJson(),
    };
  }

  @override
  MessageExtendedMediaUnsupported copyWith({
    FormattedText? caption,
  }) =>
      MessageExtendedMediaUnsupported(
        caption: caption ?? this.caption,
      );

  static const CONSTRUCTOR = 'messageExtendedMediaUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;
}
